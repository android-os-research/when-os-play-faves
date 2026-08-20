.class Landroid/media/MediaPlayer$6;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$mp:Landroid/media/MediaPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 4371
    iput-object p1, p0, Landroid/media/MediaPlayer$6;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 4378
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer$6;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 4381
    goto :goto_a

    .line 4379
    :catch_6
    move-exception v0

    .line 4380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4386
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method
