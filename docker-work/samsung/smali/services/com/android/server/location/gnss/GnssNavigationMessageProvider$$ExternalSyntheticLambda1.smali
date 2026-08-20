.class public final synthetic Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field public final synthetic f$1:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssNavigationMessage;

    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-static {v0, p0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->$r8$lambda$hq-RWr72rNiRatqL5D7I7QPhySM(Lcom/android/server/location/gnss/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method
