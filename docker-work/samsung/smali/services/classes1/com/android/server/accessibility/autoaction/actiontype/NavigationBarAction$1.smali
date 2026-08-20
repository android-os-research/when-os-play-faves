.class public Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction$1;
.super Ljava/lang/Object;
.source "NavigationBarAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->performCornerAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x64

    .line 93
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    new-instance p0, Landroid/app/Instrumentation;

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-void
.end method
