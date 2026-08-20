.class public final synthetic Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    invoke-static {v0, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->$r8$lambda$KQmyedszOhSxgU3WlhrXTBKFsZ0(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Ljava/io/PrintWriter;)V

    return-void
.end method
