def tournamentWinner(competitions, results):
    idx = 0
    bestTeam = ""
    record = {bestTeam: 0}
    while idx < len(competitions):
        winningTeam = competitions[idx][abs(results[idx] - 1)]
        if winningTeam in record:
            record[winningTeam] += len(competitions) 
        else:
            record[winningTeam] = len(competitions)
        if record[bestTeam] < record[winningTeam]:
            bestTeam = winningTeam
        idx += 1
    return bestTeam

print(tournamentWinner([["Bulls", "Eagles"]], [1]))