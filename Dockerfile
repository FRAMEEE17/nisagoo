FROM python:3.10-slim AS backend
#FROM python:3.10
# Set working directory for backend
WORKDIR /app

# Install backend dependencies
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

# Bundle app source
COPY . /app

EXPOSE 8051

# Start Streamlit app
CMD ["streamlit", "run", "streamlit_app.py"]