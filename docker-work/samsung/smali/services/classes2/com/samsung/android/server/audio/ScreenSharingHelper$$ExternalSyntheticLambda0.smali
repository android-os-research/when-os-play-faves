.class public final synthetic Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->$r8$lambda$S4WUwcR9oLGOM5Zig_WvVCUCn_A(Ljava/util/Set;Landroid/media/AudioPlaybackConfiguration;)Z

    move-result p0

    return p0
.end method
