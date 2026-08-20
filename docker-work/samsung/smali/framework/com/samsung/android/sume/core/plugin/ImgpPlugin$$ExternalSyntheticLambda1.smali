.class public final synthetic Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/plugin/ImgpPlugin;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->lambda$getImgProcessor$1$com-samsung-android-sume-core-plugin-ImgpPlugin(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object p1

    return-object p1
.end method
