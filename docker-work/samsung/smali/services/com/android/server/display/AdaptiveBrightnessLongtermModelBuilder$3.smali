.class public Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$UserActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;-><init>(Landroid/content/Context;ILcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 271
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmAdaptiveBrightnessStatsTrackerStarted(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 272
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmAdaptiveBrightnessStatsTracker(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->resume()V

    goto :goto_28

    :cond_15
    if-nez p1, :cond_28

    .line 275
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmAdaptiveBrightnessStatsTrackerStarted(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 276
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$fgetmAdaptiveBrightnessStatsTracker(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->pause()V

    :cond_28
    :goto_28
    return-void
.end method
