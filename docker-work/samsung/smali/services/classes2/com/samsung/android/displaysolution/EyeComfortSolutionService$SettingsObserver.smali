.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "EyeComfortSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Handler;)V
    .registers 3

    .line 595
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 596
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 600
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    return-void
.end method
