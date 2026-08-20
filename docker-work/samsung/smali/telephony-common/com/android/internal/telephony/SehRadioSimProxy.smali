.class public Lcom/android/internal/telephony/SehRadioSimProxy;
.super Lcom/android/internal/telephony/SehRadioServiceProxy;
.source "SehRadioSimProxy.java"


# instance fields
.field private volatile blacklist mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    return-void
.end method


# virtual methods
.method public blacklist accessPhonebookEntry(IIIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    .line 174
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v2

    const-string v3, "sne["

    const-string v4, ""

    const-string v5, "name["

    const-string v6, " ] = "

    const-string v7, "SehRadioSimProxy"

    const-string v8, "utf-16le"

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eqz v2, :cond_ce

    .line 175
    new-instance v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;

    invoke-direct {v2}, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;-><init>()V

    new-array v11, v10, [B

    .line 180
    iget-object v12, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 182
    :try_start_2c
    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_30

    :catch_30
    move v12, v10

    .line 187
    :goto_31
    array-length v13, v11

    if-ge v12, v13, :cond_51

    .line 188
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v14, v11, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    .line 191
    :cond_51
    iput-object v11, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->name:[B

    .line 192
    iput v9, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->nameDcs:I

    .line 193
    array-length v5, v11

    iput v5, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->nameLength:I

    .line 194
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->number:Ljava/lang/String;

    .line 197
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-eqz v5, :cond_69

    array-length v11, v5

    if-lez v11, :cond_69

    .line 198
    aget-object v4, v5, v10

    .line 201
    :cond_69
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v4

    .line 202
    iput-object v4, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->gsm8bitEmail:[B

    .line 203
    array-length v4, v4

    iput v4, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->gsm8bitEmailLength:I

    .line 205
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->anr:Ljava/lang/String;

    .line 206
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->anrA:Ljava/lang/String;

    .line 207
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->anrB:Ljava/lang/String;

    .line 208
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->anrC:Ljava/lang/String;

    new-array v4, v10, [B

    .line 212
    iget-object v1, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mSne:Ljava/lang/String;

    .line 215
    :try_start_8e
    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_92

    .line 220
    :catch_92
    :goto_92
    array-length v1, v4

    if-ge v10, v1, :cond_b2

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v4, v10

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_92

    .line 224
    :cond_b2
    iput-object v4, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->sne:[B

    .line 225
    array-length v1, v4

    iput v1, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->sneLength:I

    .line 226
    iput v9, v2, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->sneDcs:I

    .line 227
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 229
    iget-object v11, v0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, v2

    invoke-interface/range {v11 .. v17}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/sim/SehAdnRecord;Ljava/lang/String;)V

    goto/16 :goto_1aa

    .line 231
    :cond_ce
    new-instance v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;

    invoke-direct {v2}, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;-><init>()V

    new-array v11, v10, [B

    .line 237
    iget-object v12, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 239
    :try_start_db
    invoke-virtual {v12, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_df} :catch_df

    :catch_df
    move v12, v10

    .line 244
    :goto_e0
    array-length v13, v11

    if-ge v12, v13, :cond_100

    .line 245
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v14, v11, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_e0

    .line 248
    :cond_100
    array-length v5, v11

    move v12, v10

    :goto_102
    if-ge v12, v5, :cond_112

    aget-byte v13, v11, v12

    .line 249
    iget-object v14, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->name:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_102

    .line 252
    :cond_112
    iput v9, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameDcs:I

    .line 253
    array-length v5, v11

    iput v5, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->nameLength:I

    .line 254
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->number:Ljava/lang/String;

    .line 257
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-eqz v5, :cond_128

    array-length v11, v5

    if-lez v11, :cond_128

    .line 258
    aget-object v4, v5, v10

    .line 261
    :cond_128
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v4

    .line 262
    array-length v5, v4

    move v11, v10

    :goto_12e
    if-ge v11, v5, :cond_13e

    aget-byte v12, v4, v11

    .line 263
    iget-object v13, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmail:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_12e

    .line 265
    :cond_13e
    array-length v4, v4

    iput v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->gsm8bitEmailLength:I

    .line 267
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anr:Ljava/lang/String;

    .line 268
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrA:Ljava/lang/String;

    .line 269
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrB:Ljava/lang/String;

    .line 270
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->anrC:Ljava/lang/String;

    new-array v4, v10, [B

    .line 274
    iget-object v1, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mSne:Ljava/lang/String;

    .line 277
    :try_start_15d
    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_161} :catch_161

    :catch_161
    move v1, v10

    .line 282
    :goto_162
    array-length v5, v4

    if-ge v1, v5, :cond_182

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v4, v1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_162

    .line 286
    :cond_182
    array-length v1, v4

    :goto_183
    if-ge v10, v1, :cond_193

    aget-byte v3, v4, v10

    .line 287
    iget-object v5, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sne:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_183

    .line 290
    :cond_193
    array-length v1, v4

    iput v1, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneLength:I

    .line 291
    iput v9, v2, Lvendor/samsung/hardware/radio/V2_0/SehAdnRecord;->sneDcs:I

    .line 292
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 294
    iget-object v3, v0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v8, v2

    invoke-interface/range {v3 .. v9}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->accessPhonebookEntry(IIIILvendor/samsung/hardware/radio/V2_0/SehAdnRecord;Ljava/lang/String;)V

    :goto_1aa
    return-void
.end method

.method public blacklist changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 155
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 158
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->changeIccPersonalization(ILjava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 66
    sget-object v0, Lcom/android/internal/telephony/SemRIL;->SEC_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    .line 68
    iput-object v0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    return-void
.end method

.method public blacklist getAidl()Lvendor/samsung/hardware/radio/sim/ISehRadioSim;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    return-object p0
.end method

.method public blacklist getAtr(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 300
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getAtr(I)V

    goto :goto_18

    .line 303
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getAtr(I)V

    :goto_18
    return-void
.end method

.method public blacklist getIccCardStatus(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getIccCardStatus(I)V

    goto :goto_18

    .line 85
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getIccCardStatus(I)V

    :goto_18
    return-void
.end method

.method public blacklist getPhonebookEntry(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getPhonebookEntry(III)V

    goto :goto_18

    .line 167
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getPhonebookEntry(III)V

    :goto_18
    return-void
.end method

.method public blacklist getPhonebookStorageInfo(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 101
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 102
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getPhonebookStorageInfo(II)V

    goto :goto_18

    .line 104
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getPhonebookStorageInfo(II)V

    :goto_18
    return-void
.end method

.method public blacklist getSimLockInfo(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 137
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getSimLockInfo(III)V

    goto :goto_18

    .line 140
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getSimLockInfo(III)V

    :goto_18
    return-void
.end method

.method public blacklist getUsimPhonebookCapability(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 110
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->getUsimPhonebookCapability(I)V

    goto :goto_18

    .line 113
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->getUsimPhonebookCapability(I)V

    :goto_18
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/samsung/hardware/radio/sim/ISehRadioSim;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mIsAidl:Z

    const-string p0, "SehRadioSimProxy"

    const-string p1, "AIDL initialized"

    .line 50
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setSimInitEvent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->setSimInitEvent(I)V

    goto :goto_18

    .line 131
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setSimInitEvent(I)V

    :goto_18
    return-void
.end method

.method public blacklist setSimOnOff(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 119
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 120
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->setSimOnOff(II)V

    goto :goto_18

    .line 122
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->setSimOnOff(II)V

    :goto_18
    return-void
.end method

.method public blacklist supplyIccPersonalization(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 146
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->supplyIccPersonalization(ILjava/lang/String;)V

    goto :goto_18

    .line 149
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->supplyIccPersonalization(ILjava/lang/String;)V

    :goto_18
    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 92
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SehRadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioSimProxy;->mSehSimProxy:Lvendor/samsung/hardware/radio/sim/ISehRadioSim;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSim;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    goto :goto_18

    .line 95
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioServiceProxy;->mSehRadioProxy:Lvendor/samsung/hardware/radio/V2_0/ISehRadio;

    invoke-interface {p0, p1, p2, p3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadio;->supplyNetworkDepersonalization(ILjava/lang/String;I)V

    :goto_18
    return-void
.end method
