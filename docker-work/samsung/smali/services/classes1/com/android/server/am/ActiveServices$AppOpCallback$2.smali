.class public Lcom/android/server/am/ActiveServices$AppOpCallback$2;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices$AppOpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V
    .registers 2

    .line 2700
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback$2;->this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 2705
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback$2;->this$0:Lcom/android/server/am/ActiveServices$AppOpCallback;

    invoke-static {p0, p1, p2, p6}, Lcom/android/server/am/ActiveServices$AppOpCallback;->-$$Nest$mincrementOpCountIfNeeded(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V

    return-void
.end method
