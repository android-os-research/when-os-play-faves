.class public final Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleDispatchEntry"
.end annotation


# instance fields
.field public argRealtime:J

.field public elapsedRealtime:J

.field public op:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
