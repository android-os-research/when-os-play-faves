.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
.super Ljava/lang/Object;
.source "ActivityInterceptorCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityInterceptorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityInterceptResult"
.end annotation


# instance fields
.field public final activityOptions:Landroid/app/ActivityOptions;

.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->intent:Landroid/content/Intent;

    .line 153
    iput-object p2, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->activityOptions:Landroid/app/ActivityOptions;

    return-void
.end method
