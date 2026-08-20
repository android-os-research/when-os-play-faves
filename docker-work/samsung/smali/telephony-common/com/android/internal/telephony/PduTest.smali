.class public Lcom/android/internal/telephony/PduTest;
.super Ljava/lang/Object;
.source "PduTest.java"


# static fields
.field private static final blacklist DBG:Z


# instance fields
.field private blacklist LOG_TAG:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field protected blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

.field private blacklist mPhoneId:I

.field private blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetLOG_TAG(Lcom/android/internal/telephony/PduTest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessagingIndication(Lcom/android/internal/telephony/PduTest;)Lcom/android/internal/telephony/MessagingIndication;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/PduTest;->mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/PduTest;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/PduTest;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcdmaNewSms(Lcom/android/internal/telephony/PduTest;ILandroid/telephony/SmsMessage;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PduTest;->cdmaNewSms(ILandroid/telephony/SmsMessage;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateFromPdu(Lcom/android/internal/telephony/PduTest;[B)Landroid/telephony/SmsMessage;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PduTest;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/telephony/PduTest;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/PduTest;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/MessagingIndication;I)V
    .registers 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PduTest"

    .line 31
    iput-object v0, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/PduTest;->mPhoneId:I

    .line 37
    new-instance v0, Lcom/android/internal/telephony/PduTest$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PduTest$1;-><init>(Lcom/android/internal/telephony/PduTest;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PduTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/PduTest;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    .line 83
    iput-object p3, p0, Lcom/android/internal/telephony/PduTest;->mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

    .line 84
    iput p4, p0, Lcom/android/internal/telephony/PduTest;->mPhoneId:I

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    .line 87
    sget-boolean p1, Lcom/android/internal/telephony/PduTest;->DBG:Z

    if-eqz p1, :cond_53

    .line 88
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.android.internal.telephony.PduTest"

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    const-string p3, "register for intent action=com.android.internal.telephony.PduTest"

    invoke-static {p2, p3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p2, p0, Lcom/android/internal/telephony/PduTest;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/PduTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_53
    return-void
.end method

.method private blacklist cdmaNewSms(ILandroid/telephony/SmsMessage;)V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3fc

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 171
    iget-object p0, p0, Lcom/android/internal/telephony/PduTest;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSmsRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist createFromPdu([B)Landroid/telephony/SmsMessage;
    .registers 11

    const-string v0, "createFromPdu: conversion from byte array to object failed: "

    .line 102
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 103
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 107
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 108
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    const/4 v5, 0x0

    .line 109
    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 110
    iput-byte v5, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    new-array v6, v5, [B

    .line 111
    iput-object v6, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 114
    :try_start_24
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 115
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 116
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 118
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 119
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 120
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 121
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 123
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 124
    iput v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 127
    array-length v7, p1
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_55} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_55} :catch_c6

    const-string v8, " > pdu len "

    if-gt v6, v7, :cond_a8

    .line 132
    :try_start_59
    new-array v7, v6, [B

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 133
    invoke-virtual {v2, v7, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 135
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 137
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 138
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 139
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 142
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 144
    array-length v7, p1

    if-gt v6, v7, :cond_8a

    .line 149
    new-array p1, v6, [B

    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 150
    invoke-virtual {v2, p1, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 151
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    goto :goto_db

    .line 145
    :cond_8a
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_a8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_c6} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_c6} :catch_c6

    :catch_c6
    move-exception p1

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/PduTest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_db
    iput-object v3, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 161
    iput-object v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 163
    new-instance p0, Landroid/telephony/SmsMessage;

    new-instance p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p1, v3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    invoke-direct {p0, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object p0

    :catch_ea
    move-exception p0

    .line 153
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
