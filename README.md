
# Ride Sharing App

## Overview
The Ride Sharing App is a web-based application built using React.js and Next.js, with MySQL and SQL as the database for storing and retrieving data. This app provides separate login and authentication for drivers and passengers, integrates Stripe API for payment processing, and implements SHA256 encryption for securing sensitive data. Users can select rides, book them, rate their experiences, and add tips for drivers. The app also includes a mapping algorithm to optimize ride paths and uses Google Maps for estimating ride durations.

## Features
1. **User Authentication**:
    - Separate login for drivers and passengers.
    - Secure authentication and session management.

2. **Ride Booking**:
    - Users can view all available rides for a given timestamp.
    - Book rides with real-time availability.
    - Rate the driver and the ride experience after completion.
    - Option to add tips for drivers post-ride.

3. **Payment Gateway**:
    - Integrated with Stripe API for secure and seamless payments.

4. **Data Security**:
    - All relevant data is stored using SHA256 encryption.
    - Sensitive information, such as user credentials and payment details, are encrypted before storage.

5. **Mapping and Route Optimization**:
    - Utilizes a mapping algorithm to find the shortest path for new ride requests.
    - Integrates with Google Maps to provide accurate time estimations for rides.

## Technology Stack
- **Frontend**:
    - React.js for building the user interface.
    - Next.js for server-side rendering and routing.

- **Backend**:
    - Node.js for handling server-side logic.
    - MySQL and SQL for database management and data storage.

- **Payment Processing**:
    - Stripe API for handling payments securely.

- **Data Security**:
    - SHA256 encryption for secure data storage and transfer.

## Installation
1. **Clone the Repository**:
    \```bash
    git clone https://github.com/wable-j/RideSharingApp.git
    cd RideSharingApp
    \```

2. **Install Dependencies**:
    \```bash
    npm install
    \```

3. **Setup Environment Variables**:
    Create a `.env` file in the root directory and add the following variables:
    \```plaintext
    DATABASE_HOST=your_database_host
    DATABASE_USER=your_database_user
    DATABASE_PASSWORD=your_database_password
    DATABASE_NAME=your_database_name
    STRIPE_SECRET_KEY=your_stripe_secret_key
    GOOGLE_MAPS_API_KEY=your_google_maps_api_key
    \```

5. **Run the Application**:
    \```bash
    npm run dev
    \```

## Usage
- **Passenger**:
    - Sign up and log in.
    - Browse available rides for the desired timestamp.
    - Book a ride and make payment via Stripe.
    - Rate the driver and ride experience.
    - Optionally, add a tip for the driver.

- **Driver**:
    - Sign up and log in.
    - Accept ride requests and view optimized routes.
    - Complete rides and receive ratings from passengers.

## Security
- **SHA256 Encryption**:
    - SHA256 (Secure Hash Algorithm 256-bit) is used to encrypt sensitive data.
    - This ensures that user credentials, payment details, and other private information are stored securely.
    - The encryption process converts data into a fixed-size string of characters, which is practically impossible to decrypt without the original encryption key.

## Mapping and Route Optimization
- **Mapping Algorithm**:
    - Implements a shortest path algorithm to accommodate new ride requests efficiently.
    - Ensures minimal detour and optimal route planning for drivers.

- **Google Maps Integration**:
    - Provides accurate and real-time estimations of ride durations.
    - Enhances the user experience by offering precise navigation and route details.

## Contributing
1. **Fork the Repository**:
    Click on the 'Fork' button at the top right of the repository page.

2. **Create a Feature Branch**:
    \```bash
    git checkout -b feature/your-feature-name
    \```

3. **Commit Your Changes**:
    \```bash
    git commit -m 'Add some feature'
    \```

4. **Push to the Branch**:
    \```bash
    git push origin feature/your-feature-name
    \```

5. **Create a Pull Request**:
    Open a pull request to the `main` branch with a description of your feature.


## Contact
For any queries or support, please contact [JUGAL WABLE] at [jugal.wable@gmail.com].

