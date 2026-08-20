.class public Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrowserSettings"
.end annotation


# instance fields
.field public blacklist mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field public blacklist url:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
