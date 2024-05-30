import { render, screen } from '@testing-library/react';
import { BrowserRouter } from 'react-router-dom';
import App from './App';

test('renders with keyword gold', () => {
  render(
    <BrowserRouter>
      <App />
    </BrowserRouter>
  );
  const goldText = screen.getByText(/gold/i);
  expect(goldText).toBeInTheDocument();
});
