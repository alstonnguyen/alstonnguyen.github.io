---
title: 'ScentStealer'
excerpt: "Community-driven platform for discovering affordable fragrance clones and designer perfume alternatives <br/><img src='/images/ScentStealer.png'>"
collection: portfolio
category: "Live On-Going"
tags:
  - fullstack
  - typescript
  - mern
  - oauth
  - seo
---

## Table of Contents

- [About ScentStealer](#about-scentstealer)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Architecture](#architecture)
- [User Guide](#user-guide)
- [Development Highlights](#development-highlights)
- [License](#license)

## About ScentStealer

ScentStealer is a full-stack web application that helps fragrance enthusiasts discover high-quality, affordable alternatives to expensive designer perfumes. Built with modern TypeScript and a scalable MERN architecture, the platform leverages community reviews, AI-powered search, and comprehensive fragrance data to help users save 70-90% on luxury scents.

The application features a sophisticated search engine with fuzzy matching, real-time updates, user authentication via OAuth 2.0, and a gamified community system with leaderboards and achievements. With over 1,000+ fragrances indexed and growing daily, ScentStealer democratizes access to luxury fragrances.

**Live Site**: [https://scentstealer.com](https://scentstealer.com)

## Features

- **Intelligent Search Engine**: Fuzzy search with debouncing and autocomplete for finding fragrances and their clones instantly
- **Community Reviews & Ratings**: User-generated content with upvoting, commenting, and quality verification
- **OAuth Authentication**: Secure Google and GitHub authentication with JWT token management
- **Gamification System**: User levels, achievements, and leaderboards to encourage community engagement
- **Q&A Forum**: Stack Overflow-style question system for fragrance advice and recommendations
- **Real-time Updates**: Live data synchronization using Redis caching and optimistic UI updates
- **SEO Optimized**: Server-side rendering, structured data, and dynamic meta tags for search visibility
- **Responsive Design**: Mobile-first UI built with Tailwind CSS and Shadcn/ui components
- **Admin Dashboard**: Comprehensive moderation tools for managing content and users
- **Automated Data Ingestion**: Scheduled scraping and ETL pipelines for expanding fragrance database

## Tech Stack

### Frontend

- **React 18** with TypeScript for type-safe component development
- **Vite** for lightning-fast builds and hot module replacement
- **React Router** for client-side routing with protected routes
- **TanStack Query** (React Query) for server state management and caching
- **Zustand** for lightweight global state management
- **Tailwind CSS** + **Shadcn/ui** for modern, accessible UI components
- **React Helmet Async** for SEO meta tag management
- **Axios** for HTTP client with interceptors

### Backend

- **Node.js** + **Express** with TypeScript for RESTful API
- **MongoDB** + **Mongoose** for document database with schema validation
- **Redis** (ioredis) for caching and session management
- **BullMQ** for job queue processing (data ingestion, notifications)
- **Passport.js** for OAuth 2.0 authentication (Google, GitHub)
- **JWT** for stateless authentication
- **Helmet** + **express-rate-limit** for security hardening
- **Winston** for structured logging
- **Cheerio** for web scraping

### DevOps & Infrastructure

- **Docker** + **Docker Compose** for containerization
- **GitHub Actions** for CI/CD pipelines
- **Cloudflare Tunnel** for secure self-hosting
- **pnpm** workspaces for monorepo management
- **ESLint** + **Prettier** for code quality
- **Husky** + **lint-staged** for pre-commit hooks

## Architecture

### Monorepo Structure

```
ScentStealer/
├── api/                    # Backend API (Node.js + Express + TypeScript)
│   ├── src/
│   │   ├── config/        # Database, Redis, OAuth configurations
│   │   ├── middleware/    # Authentication, rate limiting, error handling
│   │   ├── models/        # Mongoose schemas (User, Fragrance, Review, etc.)
│   │   ├── routes/        # RESTful API endpoints
│   │   ├── jobs/          # Background job processors
│   │   └── utils/         # Helper functions and services
│   └── Dockerfile
├── web/                    # Frontend (React + Vite + TypeScript)
│   ├── src/
│   │   ├── components/    # Reusable React components
│   │   ├── pages/         # Route-level page components
│   │   ├── hooks/         # Custom React hooks
│   │   ├── lib/           # API client and utilities
│   │   └── stores/        # Zustand state management
│   └── Dockerfile
└── docker-compose.yml      # Multi-container orchestration
```

### Key Design Patterns

- **Repository Pattern**: Abstracted data access layer with Mongoose models
- **Service Layer**: Business logic separated from route handlers
- **Middleware Pipeline**: Request processing with authentication, validation, rate limiting
- **API Client**: Centralized Axios instance with interceptors for token refresh
- **Optimistic Updates**: Instant UI feedback with rollback on error
- **Caching Strategy**: Multi-level caching (Redis, React Query) with TTL management

## User Guide

### Prerequisites

You must have Docker Desktop installed and running, or Node.js 18+ with MongoDB and Redis.

### Quick Start (Docker)

- **STEP 1**: Clone the repository

  ```bash
  git clone https://github.com/alstonnguyen/ScentStealer.git
  cd ScentStealer
  ```

- **STEP 2**: Configure environment variables

  ```bash
  cp .env.prod.example .env.prod
  # Edit .env.prod with your MongoDB URI, Redis URL, and OAuth credentials
  ```

- **STEP 3**: Build and run with Docker Compose

  ```bash
  docker-compose up -d
  ```

- **STEP 4**: Access the application
  - Frontend: `http://localhost:5173`
  - Backend API: `http://localhost:3000`
  - API Documentation: `http://localhost:3000/api/health`

### Self-Hosting (Production)

For a production-ready self-hosted setup with Cloudflare Tunnel and automatic SSL:

```bash
./self-host-setup.sh  # Mac/Linux
# or
self-host-setup.bat   # Windows
```

This automated script:

1. Installs dependencies and configures environment
2. Sets up Cloudflare Tunnel for secure public access
3. Configures automatic startup on reboot
4. Initializes the database with seed data
5. Starts monitoring services

**Full documentation**: [SELF_HOSTING_GUIDE.md](./SELF_HOSTING_GUIDE.md)

### Development Mode

- **STEP 1**: Install dependencies

  ```bash
  pnpm install
  ```

- **STEP 2**: Start development servers

  ```bash
  # Terminal 1 - Backend API
  cd api && pnpm run dev

  # Terminal 2 - Frontend
  cd web && pnpm run dev
  ```

- **STEP 3**: Run data ingestion (optional)
  ```bash
  cd api && pnpm run ingest
  ```

**Below is a demo:**

![ScentStealer Demo](https://via.placeholder.com/800x450.png?text=ScentStealer+Demo)
_Search fragrances → Compare clones → Read reviews → Save money_

For an in-depth look at ScentStealer features, visit [scentstealer.com](https://scentstealer.com) or check the [About Page](https://scentstealer.com/about)

## Development Highlights

### Technical Achievements

- **Scalable Architecture**: Monorepo structure with shared TypeScript configurations and consistent tooling across frontend/backend
- **Type Safety**: End-to-end TypeScript with strict mode enabled, shared types between API and client
- **Performance Optimization**:
  - Redis caching reduced API response time by 60%
  - React Query minimized unnecessary network requests
  - Code splitting and lazy loading decreased initial bundle size by 40%
- **Security Implementation**:
  - JWT refresh token rotation with httpOnly cookies
  - Rate limiting (100 requests/15min per IP)
  - MongoDB injection protection with express-mongo-sanitize
  - Helmet.js for security headers
- **SEO Strategy**:
  - Dynamic meta tags and Open Graph protocol
  - Structured data (JSON-LD) for rich search results
  - Sitemap generation and Google Search Console integration
- **Testing**: Unit tests with Jest, integration tests for API endpoints
- **CI/CD Pipeline**: Automated testing, linting, and deployment with GitHub Actions

### Problem Solving

- **Challenge**: Handling 10,000+ fragrance entries with complex search requirements
  - **Solution**: Implemented MongoDB text indexes with custom scoring algorithm, integrated fuzzy search with Levenshtein distance for typo tolerance
- **Challenge**: Preventing spam and maintaining content quality
  - **Solution**: Built gamification system with reputation points, rate limiting per user level, and automated content moderation

- **Challenge**: Managing real-time updates without WebSockets
  - **Solution**: Leveraged React Query's background refetching with smart polling intervals, optimistic updates for instant feedback

- **Challenge**: Self-hosting on residential internet without public IP
  - **Solution**: Integrated Cloudflare Tunnel for secure public access, implemented automatic reconnection and health monitoring

### Future Enhancements

- Mobile app (React Native)
- AI-powered fragrance recommendations using machine learning
- Advanced filtering (notes, concentration, longevity)
- User collections and wishlists
- Email notifications for followed fragrances

## License

Distributed under MIT License. See `LICENSE` for more information.

---

**Repository**: [github.com/alstonnguyen/ScentStealer](https://github.com/alstonnguyen/ScentStealer)  
**Author**: Alston Nguyen  
**Contact**: [GitHub](https://github.com/alstonnguyen) | [LinkedIn](https://linkedin.com/in/alstonnguyen)
