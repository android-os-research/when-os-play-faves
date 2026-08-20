.class public final Landroid/media/session/MediaController$TransportControls;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TransportControls"
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TransportController"


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaController;


# direct methods
.method private constructor blacklist <init>(Landroid/media/session/MediaController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/session/MediaController;

    .line 636
    iput-object p1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/session/MediaController;Landroid/media/session/MediaController$TransportControls-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/session/MediaController$TransportControls;-><init>(Landroid/media/session/MediaController;)V

    return-void
.end method


# virtual methods
.method public whitelist fastForward()V
    .registers 4

    .line 854
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->fastForward(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 857
    goto :goto_1c

    .line 855
    :catch_14
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling fastForward."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist pause()V
    .registers 4

    .line 817
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->pause(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 820
    goto :goto_1c

    .line 818
    :catch_14
    move-exception v0

    .line 819
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling pause."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist play()V
    .registers 4

    .line 733
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->play(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 736
    goto :goto_1c

    .line 734
    :catch_14
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling play."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 747
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 752
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 755
    goto :goto_39

    .line 753
    :catch_1a
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling play("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void

    .line 748
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty String for playFromMediaId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 768
    if-nez p1, :cond_4

    .line 771
    const-string p1, ""

    .line 774
    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    .line 777
    goto :goto_37

    .line 775
    :catch_18
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling play("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method public whitelist playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 788
    if-eqz p1, :cond_3e

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 793
    :try_start_a
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_1e

    .line 796
    goto :goto_3d

    .line 794
    :catch_1e
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling play("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3d
    return-void

    .line 789
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty Uri for playFromUri."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist prepare()V
    .registers 4

    .line 648
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->prepare(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 651
    goto :goto_1c

    .line 649
    :catch_14
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 672
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 675
    goto :goto_39

    .line 673
    :catch_1a
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling prepare("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void

    .line 668
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty String for prepareFromMediaId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 692
    if-nez p1, :cond_4

    .line 695
    const-string p1, ""

    .line 698
    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    .line 701
    goto :goto_37

    .line 699
    :catch_18
    move-exception v0

    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling prepare("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method public whitelist prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 717
    if-eqz p1, :cond_3e

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 722
    :try_start_a
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_1e

    .line 725
    goto :goto_3d

    .line 723
    :catch_1e
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling prepare("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3d
    return-void

    .line 718
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty Uri for prepareFromUri."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist rewind()V
    .registers 4

    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->rewind(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 880
    goto :goto_1c

    .line 878
    :catch_14
    move-exception v0

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling rewind."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 881
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist seekTo(J)V
    .registers 6
    .param p1, "pos"    # J

    .line 842
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->seekTo(Ljava/lang/String;J)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 845
    goto :goto_1c

    .line 843
    :catch_14
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling seekTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "customAction"    # Landroid/media/session/PlaybackState$CustomAction;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 936
    if-eqz p1, :cond_a

    .line 939
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 940
    return-void

    .line 937
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CustomAction cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 952
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 956
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    .line 959
    goto :goto_22

    .line 957
    :catch_1a
    move-exception v0

    .line 958
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Dead object in sendCustomAction."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void

    .line 953
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CustomAction cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackSpeed(F)V
    .registers 5
    .param p1, "speed"    # F

    .line 917
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_22

    .line 921
    :try_start_5
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/session/ISessionController;->setPlaybackSpeed(Ljava/lang/String;F)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_19

    .line 924
    goto :goto_21

    .line 922
    :catch_19
    move-exception v0

    .line 923
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling setPlaybackSpeed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void

    .line 918
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRating(Landroid/media/Rating;)V
    .registers 5
    .param p1, "rating"    # Landroid/media/Rating;

    .line 903
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/session/ISessionController;->rate(Ljava/lang/String;Landroid/media/Rating;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 906
    goto :goto_1c

    .line 904
    :catch_14
    move-exception v0

    .line 905
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling rate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist skipToNext()V
    .registers 4

    .line 865
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->next(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 868
    goto :goto_1c

    .line 866
    :catch_14
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling next."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist skipToPrevious()V
    .registers 4

    .line 888
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->previous(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 891
    goto :goto_1c

    .line 889
    :catch_14
    move-exception v0

    .line 890
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling previous."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist skipToQueueItem(J)V
    .registers 6
    .param p1, "id"    # J

    .line 805
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->skipToQueueItem(Ljava/lang/String;J)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 808
    goto :goto_33

    .line 806
    :catch_14
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling skipToItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportController"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    return-void
.end method

.method public whitelist stop()V
    .registers 4

    .line 829
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->stop(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 832
    goto :goto_1c

    .line 830
    :catch_14
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling stop."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
