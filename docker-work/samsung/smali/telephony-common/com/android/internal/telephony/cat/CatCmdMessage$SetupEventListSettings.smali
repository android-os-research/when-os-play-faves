.class public Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupEventListSettings"
.end annotation


# instance fields
.field public greylist eventList:[I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
