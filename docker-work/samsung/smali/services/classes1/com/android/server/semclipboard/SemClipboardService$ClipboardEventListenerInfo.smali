.class public Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
.super Ljava/lang/Object;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipboardEventListenerInfo"
.end annotation


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    .line 100
    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method
