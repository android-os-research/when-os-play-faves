.class public final Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessChangeItem"
.end annotation


# static fields
.field public static final CHANGE_ACTIVITIES:I = 0x1

.field public static final CHANGE_CAPABILITY:I = 0x4

.field public static final CHANGE_FOREGROUND_SERVICES:I = 0x2


# instance fields
.field public capability:I

.field public changes:I

.field public foregroundActivities:Z

.field public foregroundServiceTypes:I

.field public pid:I

.field public processState:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
