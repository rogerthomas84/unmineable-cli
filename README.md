Unmineable CLI for Mac
=====

This script provides a quick way of checking your balance on Unmineable (a crypto mining tool). If you've not used it,
feel free to use my referral link. It helps me fund the time to make little helpful things like this.
* [https://unmineable.com/?ref=i0uo-b0up](https://unmineable.com/?ref=i0uo-b0up)
* Referral code: `i0uo-b0up`

## Installation...

### Quick install...

For a quick and easy installation, run this next command. Alternatively, see the next sections for other ways.

```
# Clone and install
git clone git@github.com:rogerthomas84/unmineable-cli.git && cd unmineable-cli && ./setup.sh

# Run the app...
unmineable-cli
```

### Install without a clone...

If you really don't want to clone the repository, you can run this...

```
curl https://raw.githubusercontent.com/rogerthomas84/unmineable-cli/master/unmineable-cli > unmineable-cli \
  && mv unmineable-cli /usr/local/bin/unmineable-cli \
  && chmod +x /usr/local/bin/unmineable-cli
```

### Manual installation steps...

```
# Clone this repository
git clone git@github.com:rogerthomas84/unmineable-cli.git

# Go into the directory
cd unmineable-cli

# Copy the cli to the local bin directory
cp unmineable-cli /usr/local/bin/unmineable-cli

# Make the file executable
chmod +x /usr/local/bin/unmineable-cli

# Run the app...
unmineable-cli
```

## Usage...

At it's most basic, you can simply run `unmineable-cli` and the application will ask you for the wallet and coin type to
query and these will be cached in your home directory in `~/.unmineable-cli/.cache`.

Alternatively you can provide the `-wallet` and `-coin` arguments to manually specify the coin and wallet. Doing so will
not cache the details.

Providing the `-short` flag will cause the app to just output the balance payable (see: [unmineable-api](https://github.com/unMineableDev/unmineable-api#get--addressaddresscoincoin) for more information on this)

Passing the `-poll` argument (with a number `-poll 10`) would cause the app to poll the API every seconds and output the
data. In the case of using the `-short` flag alongside `-poll` the output would contain the datetime to the left of the
balance, and this would only be output if the balance changed.

```shell
usage: unmineable-cli [-h] [-coin COIN] [-wallet WALLET] [-short] [-poll POLL] [-rm]

Check the balances of unmineable. All arguments are optional

optional arguments:
  -h, --help      show this help message and exit
  -coin COIN      force use a specific coin (optional, otherwise use a cached version)
  -wallet WALLET  the wallet address (optional, otherwise use a cached version)
  -short          output just the balance payable (total pending payable balance)
  -poll POLL      poll the balance every X seconds
  -rm             remove the cache file

```

## Running examples:

* `unmineable-cli` -> Normal running. Provide the wallet address to lookup and coin manually.
* `unmineable-cli -coin doge -wallet DDSDz9bkcD3qcfu7KnSmmfgPYvLUsCb1nR` -> Provide the wallet address to lookup and
  coin manually
* `unmineable-cli -rm` -> Clear the cached file. The cache file contains the wallet and coin provided when you used
  `unmineable-cli`
* `unmineable-cli -short` -> Output the short payable balance and nothing more.

### Output...

There are two types of output. Either the full output, or short.

Full output command (using `unmineable-cli` as the command)

```shell
----
      Target coin: doge
          Balance: 0.97700737
  Balance payable: 0.97700737
Payment threshold: 30
          Address: DDSDz9bkcD3qcfu7KnSmmfgPYvLUsCb1nR

----------------------------------------------------------------------
| If you found this useful why not help me out by sending some DOGE? |
| Wallet address: DDSDz9bkcD3qcfu7KnSmmfgPYvLUsCb1nR                 |
----------------------------------------------------------------------

```

Short output command (using `unmineable-cli -short` as the command)

```shell
0.97700737
```

Polling a short output command (using `unmineable-cli -short -poll 10` as the command)

```shell
# These figures are just an example ??\_(???)_/??
2021-08-25 12:44:51: 2.10546189
2021-08-25 12:45:01: 2.13447433
2021-08-25 12:47:21: 2.19934691
```
