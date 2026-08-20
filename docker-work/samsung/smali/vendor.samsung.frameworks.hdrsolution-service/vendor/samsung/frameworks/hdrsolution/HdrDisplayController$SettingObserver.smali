.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "HdrDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;


# direct methods
.method public constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 307
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    .line 308
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 309
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 319
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 312
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blue_light_filter_night_dim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 313
    :cond_18
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->-$$Nest$mupdateBLFValue(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V

    .line 314
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$SettingObserver;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-virtual {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;->updateHdrMode()V

    .line 316
    :cond_22
    return-void
.end method
