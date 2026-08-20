.class public Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;
.super Ljava/lang/Object;
.source "ContextHubClientBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubClientBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingIntentRequest"
.end annotation


# instance fields
.field public mNanoAppId:J

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mValid:Z

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/app/PendingIntent;J)V
    .registers 5

    .line 282
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 284
    iput-wide p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public getNanoAppId()J
    .registers 3

    .line 289
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    return-wide v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public hasPendingIntent()Z
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isValid()Z
    .registers 1

    .line 305
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return p0
.end method
