.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
.super Ljava/lang/Object;
.source "ActivityInterceptorCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityInterceptorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityInterceptorInfo"
.end annotation


# instance fields
.field public final aInfo:Landroid/content/pm/ActivityInfo;

.field public final callingFeatureId:Ljava/lang/String;

.field public final callingPackage:Ljava/lang/String;

.field public final callingPid:I

.field public final callingUid:I

.field public final checkedOptions:Landroid/app/ActivityOptions;

.field public final clearOptionsAnimation:Ljava/lang/Runnable;

.field public final intent:Landroid/content/Intent;

.field public final rInfo:Landroid/content/pm/ResolveInfo;

.field public final realCallingPid:I

.field public final realCallingUid:I

.field public final resolvedType:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IILandroid/app/ActivityOptions;Ljava/lang/Runnable;)V
    .registers 14

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->realCallingUid:I

    .line 127
    iput p2, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->realCallingPid:I

    .line 128
    iput p3, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->userId:I

    .line 129
    iput-object p4, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->callingPackage:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->callingFeatureId:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->intent:Landroid/content/Intent;

    .line 132
    iput-object p7, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->rInfo:Landroid/content/pm/ResolveInfo;

    .line 133
    iput-object p8, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->aInfo:Landroid/content/pm/ActivityInfo;

    .line 134
    iput-object p9, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->resolvedType:Ljava/lang/String;

    .line 135
    iput p10, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->callingPid:I

    .line 136
    iput p11, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->callingUid:I

    .line 137
    iput-object p12, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    .line 138
    iput-object p13, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->clearOptionsAnimation:Ljava/lang/Runnable;

    return-void
.end method
