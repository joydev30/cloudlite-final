const express = require('express');
const path = require('path');
const { DynamoDBClient, PutItemCommand } = require('@aws-sdk/client-dynamodb');

const app = express();
const PORT = process.env.PORT || 3000;

// Initialize DynamoDB Client
// The SDK will automatically use the IAM role from the EC2 instance.
const dynamoDBClient = new DynamoDBClient({ region: 'us-east-1' });
const DYNAMO_TABLE = 'cloudlite-sessions';

app.use(express.json());

// Simple API endpoint
app.get('/api/hello', (req, res) => {
  res.json({ message: 'Hello from Express!' });
});

// New endpoint to test DynamoDB connection
app.get('/api/ping-db', async (req, res) => {
  const params = {
    TableName: DYNAMO_TABLE,
    Item: {
      sessionId: { S: `session_${Date.now()}` },
      createdAt: { S: new Date().toISOString() },
    },
  };

  try {
    const command = new PutItemCommand(params);
    await dynamoDBClient.send(command);
    res.json({ success: true, message: `Successfully added item to ${DYNAMO_TABLE}` });
  } catch (error) {
    console.error("Error writing to DynamoDB:", error);
    res.status(500).json({ success: false, message: 'Failed to write to DynamoDB', error: error.message });
  }
});

// Serve frontend static files
app.use(express.static(path.join(__dirname, 'public')));
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server listening on port ${PORT}`);
});
