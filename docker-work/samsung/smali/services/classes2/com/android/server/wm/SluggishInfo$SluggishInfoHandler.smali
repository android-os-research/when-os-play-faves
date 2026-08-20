.class public final Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;
.super Landroid/os/Handler;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SluggishInfoHandler"
.end annotation


# instance fields
.field public slgInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/SluggishInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/wm/SluggishInfo;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 138
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 139
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SluggishInfoHandler()"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_14
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 147
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-nez v0, :cond_5

    return-void

    .line 150
    :cond_5
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetinstance()Lcom/android/server/wm/SluggishInfo;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object p0, p0, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_62

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_62

    :cond_16
    if-eqz p1, :cond_62

    .line 153
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_62

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_21

    goto :goto_62

    .line 156
    :cond_21
    check-cast p0, Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 159
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " componentName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_4b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_57

    goto :goto_62

    .line 169
    :cond_57
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$smaddInnerChangeActivityLog(Ljava/lang/String;)V

    goto :goto_62

    .line 166
    :cond_5b
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$smaddInnerEndLaunchingLog(Ljava/lang/String;)V

    goto :goto_62

    .line 163
    :cond_5f
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$smaddInnerStartLaunchingLog(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method
