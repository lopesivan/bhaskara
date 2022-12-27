import Text.Read (readMaybe)

main :: IO ()
main = do
    -- Coeficientes da equação
    let a = ask "Informe o valor de a: "
    let b = ask "Informe o valor de b: "
    let c = ask "Informe o valor de c: "

    -- Verifica se a equação é do segundo grau
    if a == 0 then do
        putStrLn "A equação não é do segundo grau"
        return ()
    else do
        -- Calcula o delta
        let delta = b*b - 4*a*c

        -- Verifica se a equação possui raízes reais
        if delta < 0 then do
            putStrLn "A equação não possui raízes reais"
            return ()
        else do
            -- Calcula as raízes
            let x1 = (-b - sqrt delta) / (2*a)
            let x2 = (-b + sqrt delta) / (2*a)

            -- Imprime as raízes
            putStrLn $ "x1 = " ++ show x1
            putStrLn $ "x2 = " ++ show x2

-- Função que pede um valor ao usuário e o retorna como um Double
ask :: String -> Double
ask message = do
    putStr message
    value <- getLine
    case readMaybe value of
        Just x  -> return x
        Nothing -> do
            putStrLn "Valor inválido"
            ask message
