.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->$r8$lambda$91XUnvhCLcV1Nc6NcziL8N69dgk(Landroid/media/AudioDeviceAttributes;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
