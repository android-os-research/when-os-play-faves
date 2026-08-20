.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->$r8$lambda$PjD6ZxbaCg7zOelpKfr5sWCsAb0(Lcom/android/server/audio/AudioService$AudioPolicyProxy;)V

    return-void
.end method
