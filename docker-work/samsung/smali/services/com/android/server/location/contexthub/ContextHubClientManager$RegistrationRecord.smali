.class public Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegistrationRecord"
.end annotation


# instance fields
.field public final mAction:I

.field public final mBroker:Ljava/lang/String;

.field public final mTimestamp:J

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V
    .registers 4

    .line 114
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->this$0:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    .line 116
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    .line 121
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 122
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 123
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    const-wide v0, 0x10900000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubClientManager;->-$$Nest$sfgetDATE_FORMAT()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    if-nez v0, :cond_34

    const-string v0, "+ "

    goto :goto_36

    :cond_34
    const-string v0, "- "

    :goto_36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_64

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (cancelled)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_64
    return-object v0
.end method
