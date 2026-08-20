.class public Landroid/os/HWParamResultData;
.super Landroid/os/HWParamData;
.source "HWParamResultData.java"


# instance fields
.field private blacklist interfaceType:I

.field private blacklist server:I

.field private blacklist time:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Landroid/os/HWParamData;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HWParamResultData;->server:I

    .line 18
    iput v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist getDate()Ljava/util/Date;
    .registers 4

    .line 94
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Landroid/os/HWParamResultData;->time:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public blacklist getInfo()Ljava/lang/String;
    .registers 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 109
    iget v1, p0, Landroid/os/HWParamResultData;->server:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_15

    .line 110
    const-string v1, "N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 111
    :cond_15
    if-nez v1, :cond_1d

    .line 112
    const-string v1, "D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 113
    :cond_1d
    if-ne v1, v2, :cond_24

    .line 114
    const-string v1, "C "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_24
    :goto_24
    iget v1, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v1, v3, :cond_2e

    .line 118
    const-string v1, "? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 119
    :cond_2e
    if-nez v1, :cond_36

    .line 120
    const-string v1, "K "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 121
    :cond_36
    if-ne v1, v2, :cond_3e

    .line 122
    const-string v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 123
    :cond_3e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_46

    .line 124
    const-string v1, "I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_46
    :goto_46
    iget-object v1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    const-string v2, " | "

    if-eqz v1, :cond_54

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_54
    iget-object v1, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_60
    iget-object v1, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    if-eqz v1, :cond_6c

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_6c
    iget-object v1, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v1, :cond_78

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_78
    iget-object v1, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    if-eqz v1, :cond_84

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getInterfaceType()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    return v0
.end method

.method public blacklist getServer()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/os/HWParamResultData;->server:I

    return v0
.end method

.method public blacklist getTime()J
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    return-wide v0
.end method

.method blacklist readFromParcelLocked(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamResultData;->server:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public blacklist setBasicParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "compID"    # Ljava/lang/String;
    .param p2, "compVer"    # Ljava/lang/String;
    .param p3, "compManufacture"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "feature"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public blacklist setLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "logMaps"    # Ljava/lang/String;
    .param p2, "envlogMaps"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public blacklist setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "HWRev"    # Ljava/lang/String;
    .param p2, "IMEI"    # Ljava/lang/String;
    .param p3, "UN"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public blacklist setServer(II)V
    .registers 3
    .param p1, "server"    # I
    .param p2, "interfaceType"    # I

    .line 85
    iput p1, p0, Landroid/os/HWParamResultData;->server:I

    .line 86
    iput p2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    .line 87
    return-void
.end method

.method public blacklist setTime(J)V
    .registers 3
    .param p1, "time"    # J

    .line 81
    iput-wide p1, p0, Landroid/os/HWParamResultData;->time:J

    .line 82
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    iget-wide v1, p0, Landroid/os/HWParamResultData;->time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    .line 161
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Landroid/os/HWParamResultData;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v1    # "DateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_2a

    .line 164
    :cond_25
    const-string v1, "?????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :goto_2a
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v2, p0, Landroid/os/HWParamResultData;->server:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3b

    .line 169
    const-string v2, "N "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 170
    :cond_3b
    if-nez v2, :cond_43

    .line 171
    const-string v2, "D "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 172
    :cond_43
    if-ne v2, v3, :cond_4a

    .line 173
    const-string v2, "C "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_4a
    :goto_4a
    iget v2, p0, Landroid/os/HWParamResultData;->interfaceType:I

    if-ne v2, v4, :cond_54

    .line 177
    const-string v2, "? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 178
    :cond_54
    if-nez v2, :cond_5c

    .line 179
    const-string v2, "K "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 180
    :cond_5c
    if-ne v2, v3, :cond_64

    .line 181
    const-string v2, "A "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 182
    :cond_64
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6c

    .line 183
    const-string v2, "I "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_6c
    :goto_6c
    iget-object v2, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    const-string v3, " | "

    if-eqz v2, :cond_7a

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v2, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_7a
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_86

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_86
    iget-object v2, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    const-string v4, " "

    if-eqz v2, :cond_94

    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v2, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_94
    iget-object v2, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    if-eqz v2, :cond_a0

    .line 202
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_a0
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    if-eqz v2, :cond_ac

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v2, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_ac
    iget-object v2, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    if-eqz v2, :cond_b8

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v2, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " :"

    if-nez v2, :cond_cf

    .line 218
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v2, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 224
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v1, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_e2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist writeToParcelLocked(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 43
    iget-wide v0, p0, Landroid/os/HWParamResultData;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget v0, p0, Landroid/os/HWParamResultData;->interfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Landroid/os/HWParamResultData;->server:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Landroid/os/HWParamResultData;->compID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Landroid/os/HWParamResultData;->compVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroid/os/HWParamResultData;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroid/os/HWParamResultData;->hitType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroid/os/HWParamResultData;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Landroid/os/HWParamResultData;->HWRev:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Landroid/os/HWParamResultData;->IMEI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroid/os/HWParamResultData;->UN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroid/os/HWParamResultData;->logMaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroid/os/HWParamResultData;->envlogMaps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return-void
.end method
