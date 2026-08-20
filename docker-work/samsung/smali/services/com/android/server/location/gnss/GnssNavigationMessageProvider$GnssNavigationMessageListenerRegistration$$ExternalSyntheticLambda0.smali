.class public final synthetic Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/location/IGnssNavigationMessageListener;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageListenerRegistration;->$r8$lambda$ny5ofoWbMdebNFQJlKvviZlHxlc(Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method
