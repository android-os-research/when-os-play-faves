.class public final synthetic Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->$r8$lambda$ZjlZ3zTNezAL85WlFzIR6XyETRI(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method
