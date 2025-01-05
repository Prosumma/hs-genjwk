{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Servant.Auth.Server

import qualified Data.Aeson as Aeson
import qualified Data.ByteString.Base64 as Base64
import qualified RIO.ByteString as ByteString

main :: IO ()
main = generateKey >>= ByteString.putStr . Base64.encode . ByteString.toStrict . Aeson.encode >> ByteString.putStr "\n"
