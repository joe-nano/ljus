//
// Created by erik on 09/09/17.
//

#include "Response.h"
#include <utility>
/**
 * @brief Get the content length in bytes of the HTTP response's body content
 * @return length in bytes of content
 */
unsigned long long Ljus::Response::content_length() {
    return this->content.length();
}

/**
 * @brief generate a string description for the HTTP status code given to the function
 * @param code the HTTP status code
 * @return the string describing the HTTP code
 */
std::string http_code_message(unsigned short code) {
    switch (code) {
        case 100:
            return "Continue";
        case 101:
            return "Switching Protocols";
        case 200:
            return "OK";
        case 201:
            return "Created";
        case 202:
            return "Accepted";
        case 203:
            return "Non-Authoritative Information";
        case 205:
            return "Reset Content";
        case 206:
            return "Partial Content";
        case 300:
            return "Multiple Choices";
        case 301:
            return "Moved Permanently";
        case 302:
            return "Found";
        case 303:
            return "See Other";
        case 304:
            return "Not Modified";
        case 305:
            return "Use Proxy";
        case 307:
            return "Temporary Redirect";
        case 400:
            return "Bad Request";
        case 401:
            return "Unauthorized";
        case 402:
            return "Payment Required";
        case 403:
            return "Forbidden";
        case 404:
            return "Not Found";
        case 405:
            return "Method Not Allowed";
        case 406:
            return "Not Acceptable";
        case 407:
            return "Proxy Authentication Required";
        case 408:
            return "Request Timeout";
        case 409:
            return "Conflict";
        case 410:
            return "Gone";
        case 411:
            return "Length Required";
        case 412:
            return "Precondition Failed";
        case 413:
            return "Request Entity Too Large";
        case 414:
            return "Request-URI Too Long";
        case 415:
            return "Unsupported Media Type";
        case 416:
            return "Requested Range Not Satisfiable";
        case 417:
            return "Expectation Failed";
        case 500:
            return "Internal Server Error";
        case 501:
            return "Not Implemented";
        case 502:
            return "Bad Gateway";
        case 503:
            return "Service Unavailable";
        case 504:
            return "Gateway Timeout";
        case 505:
            return "HTTP Version Not Supported";

        default:
            return "Not Implemented & Not 501";
    }
}

/**
 * @brief Generate an HTTP response from this request object
 * @return Properly formatted HTTP message content
 */
std::string Ljus::Response::generate() {
    std::stringstream sstream;
    sstream << this->http_type << " " << this->code << " " << http_code_message(this->code) << "\r\n\r\n"
            << "Content-Length: " << this->content_length() << "\r\n\r\n"
            << "X-XSS-Protection: 1; mode=block" << "\r\n\r\n" <<
            this->content;
    return sstream.str();
}

/**
 * @brief Get the cookies attached to this response
 * @return a vector of cookies
 */
std::vector<Ljus::Cookie> Ljus::Response::get_cookies() {
    return this->cookies;
}
void Ljus::Response::set_header(std::string name, std::string value)
{
     this->headers[name] = value;
}

