.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 2

    .line 1289
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    if-nez p1, :cond_7

    .line 1304
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->-$$Nest$mupdateColorSampling(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    :cond_7
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
