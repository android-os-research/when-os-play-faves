.class public final Lcom/android/server/appop/AppOpsService$ChangeRec;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChangeRec"
.end annotation


# instance fields
.field public final op:I

.field public final pkg:Ljava/lang/String;

.field public final previous_mode:I

.field public final uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5

    .line 3076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3077
    iput p1, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 3078
    iput p2, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    .line 3079
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 3080
    iput p4, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    return-void
.end method
