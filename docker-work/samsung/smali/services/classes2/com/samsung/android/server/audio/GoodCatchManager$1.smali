.class public Lcom/samsung/android/server/audio/GoodCatchManager$1;
.super Ljava/lang/Object;
.source "GoodCatchManager.java"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/GoodCatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/GoodCatchManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .registers 5

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$sfgetSOUND_MODE()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-static {p0}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$fgetmSoundMode(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object p0

    aput-boolean v2, p0, v1

    goto :goto_58

    .line 96
    :cond_2e
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$sfgetSOUND_MODE()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-static {p0}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$fgetmSoundMode(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object p0

    aput-boolean v2, p0, v2

    goto :goto_58

    .line 98
    :cond_43
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$sfgetSOUND_MODE()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-static {p0}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$fgetmSoundMode(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object p0

    aput-boolean v2, p0, v1

    :cond_58
    :goto_58
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .registers 5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.GoodCatchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$sfgetSOUND_MODE()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-static {p0}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$fgetmSoundMode(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object p0

    aput-boolean v1, p0, v1

    goto :goto_58

    .line 108
    :cond_2d
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$sfgetSOUND_MODE()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-static {p0}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$fgetmSoundMode(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object p0

    aput-boolean v1, p0, v2

    goto :goto_58

    .line 110
    :cond_43
    invoke-static {}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$sfgetSOUND_MODE()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$1;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-static {p0}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$fgetmSoundMode(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z

    move-result-object p0

    aput-boolean v1, p0, v2

    :cond_58
    :goto_58
    return-void
.end method
