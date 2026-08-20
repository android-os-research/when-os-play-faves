.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;
.super Ljava/lang/Thread;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanRawTableThread"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$fgetmGsmInboundSmsHandler(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v1

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    iget-object v5, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$mgetUndeliveredSmsExpirationTime(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 154
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V

    .line 157
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->cancelNewMessageNotification(Landroid/content/Context;)V

    return-void
.end method
