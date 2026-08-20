.class public final synthetic Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iput-boolean p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->$r8$lambda$JiZpIZoV7gE3_4-He87C3-CMLAs(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V

    return-void
.end method
