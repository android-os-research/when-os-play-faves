.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;
.super Landroid/os/Handler;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CoverAttachProcessHandler"
.end annotation


# static fields
.field public static final MSG_ATTACH:I = 0x0

.field public static final MSG_DETACH:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 2

    .line 1095
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 1101
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_10

    const-string/jumbo v3, "when"

    .line 1104
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_11

    :cond_10
    move-wide v3, v1

    .line 1106
    :goto_11
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_b3

    if-eq v0, v6, :cond_1b

    goto/16 :goto_cb

    .line 1116
    :cond_1b
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1118
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 1120
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmDetachCheck(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/DetachCheck;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/DetachCheck;->isAuthChipExistBySensor()I

    move-result p1

    if-ne p1, v6, :cond_4d

    .line 1122
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auth chip exists"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1124
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 p1, 0x31

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msendCoverStateToSensorhub(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;C)V

    goto/16 :goto_cb

    :cond_4d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6c

    .line 1126
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmCoverStateByNfc(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result p1

    if-ne p1, v6, :cond_6c

    .line 1127
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1128
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmCoverStateBySensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1129
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 p1, 0x32

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msendCoverStateToSensorhub(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;C)V

    goto :goto_cb

    .line 1132
    :cond_6c
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$msendCoverStateToSensorhub(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;C)V

    .line 1137
    :cond_73
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-wide v6, p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    cmp-long v0, v6, v1

    if-eqz v0, :cond_85

    sub-long/2addr v3, v6

    const-wide/32 v6, 0x1dcd6500

    cmp-long v0, v3, v6

    if-gez v0, :cond_85

    const-wide/16 v1, 0x1f4

    .line 1141
    :cond_85
    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmSafetyDetachTimeoutWakeLock(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1142
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmLastDetachTime(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V

    .line 1143
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmFailuresCount(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1144
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mstopAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V

    .line 1145
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmCoverBroadcaster(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    move-result-object p1

    if-eqz p1, :cond_cb

    .line 1146
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fgetmCoverBroadcaster(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->broadcastCoverAttachStatus(Z)V

    goto :goto_cb

    .line 1108
    :cond_b3
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p1, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmAuthType(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 1110
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-wide v3, p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$fputmLastAttachTime(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V

    .line 1112
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {p0, v6, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    :cond_cb
    :goto_cb
    return-void
.end method
