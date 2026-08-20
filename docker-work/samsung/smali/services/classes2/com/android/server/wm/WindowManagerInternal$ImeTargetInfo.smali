.class public Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeTargetInfo"
.end annotation


# instance fields
.field public final focusedWindowName:Ljava/lang/String;

.field public final imeControlTargetName:Ljava/lang/String;

.field public final imeLayerTargetName:Ljava/lang/String;

.field public final requestWindowName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    .line 846
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    .line 847
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    .line 848
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    return-void
.end method
