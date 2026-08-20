.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/audio/AudioService;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->$r8$lambda$EqWJpbvhfKv_93JVCece2wz1YMg(Lcom/android/server/audio/AudioService;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
