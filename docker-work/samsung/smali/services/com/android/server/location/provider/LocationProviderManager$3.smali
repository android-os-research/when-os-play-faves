.class public Lcom/android/server/location/provider/LocationProviderManager$3;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/LocationProviderManager;->registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field public final synthetic val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/PendingIntent;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;)V
    .registers 4

    .line 2007
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2009
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$3;->val$registration:Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;

    # invokes: Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    invoke-static {v0, v1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->access$200(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method
