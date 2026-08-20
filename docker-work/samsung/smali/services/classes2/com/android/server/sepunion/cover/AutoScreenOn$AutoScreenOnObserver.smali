.class public Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;
.super Landroid/database/ContentObserver;
.source "AutoScreenOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/AutoScreenOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoScreenOnObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/AutoScreenOn;Landroid/os/Handler;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;->this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 78
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 79
    invoke-static {}, Lcom/android/server/sepunion/cover/AutoScreenOn;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoScreenOnObserver"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 84
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 85
    invoke-static {}, Lcom/android/server/sepunion/cover/AutoScreenOn;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScreenOnObserver.onChange(boolean selfChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;->this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    return-void
.end method
