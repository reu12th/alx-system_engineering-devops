#!/usr/bin/python3
"""A functions which queries the Reddit of subscribers"""
import requests


def number_of_subscribers(subreddit):
    """returns subscribers or else zero, null"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        return 0
    results = response.json().get("data")
    return results.get("subscribers")
