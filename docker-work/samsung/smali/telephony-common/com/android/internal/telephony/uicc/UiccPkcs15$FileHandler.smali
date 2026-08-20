.class Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPkcs15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileHandler"
.end annotation


# static fields
.field protected static final blacklist EVENT_READ_BINARY_DONE:I = 0x66

.field protected static final blacklist EVENT_SELECT_FILE_DONE:I = 0x65


# instance fields
.field private blacklist mCallback:Landroid/os/Message;

.field private blacklist mFileId:Ljava/lang/String;

.field final blacklist mPkcs15Path:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating FileHandler, pkcs15Path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mPkcs15Path:Ljava/lang/String;

    return-void
.end method

.method private blacklist readBinary()V
    .registers 11

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    if-ltz v0, :cond_26

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmUiccProfile(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xb0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v0, 0x66

    .line 93
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-string v8, ""

    .line 92
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2b

    :cond_26
    const-string p0, "EF based"

    .line 95
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method private blacklist selectFile()V
    .registers 11

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    if-ltz v0, :cond_26

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmUiccProfile(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xa4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    const/16 v0, 0x65

    .line 84
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 83
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_2b

    :cond_26
    const-string p0, "EF based"

    .line 86
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    :goto_2b
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 103
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_ca

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_25

    goto/16 :goto_ca

    .line 110
    :cond_25
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x65

    const-string v5, "IccIoResult: "

    if-eq v3, v4, :cond_96

    const/16 v0, 0x66

    if-eq v3, v0, :cond_49

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 125
    :cond_49
    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 126
    iget-object p1, v1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    if-nez p1, :cond_8d

    .line 130
    new-instance v2, Lcom/android/internal/telephony/uicc/IccException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: null response for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    .line 129
    :cond_8d
    invoke-static {v0, p1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c9

    .line 114
    :cond_96
    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->readBinary()V

    goto :goto_c9

    .line 117
    :cond_a2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    new-instance v0, Lcom/android/internal/telephony/uicc/IccException;

    const-string v1, "Error: select file failed "

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_c9
    return-void

    .line 104
    :cond_ca
    :goto_ca
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist loadFile(Ljava/lang/String;Landroid/os/Message;)Z
    .registers 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    if-eqz p1, :cond_22

    if-nez p2, :cond_19

    goto :goto_22

    .line 75
    :cond_19
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->selectFile()V

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method
