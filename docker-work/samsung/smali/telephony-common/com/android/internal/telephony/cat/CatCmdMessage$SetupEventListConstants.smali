.class public final Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListConstants;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SetupEventListConstants"
.end annotation


# static fields
.field public static final blacklist ACCESS_TECHNOLOGY_CHANGE_EVENT:I = 0xb

.field public static final blacklist BROWSER_TERMINATION_EVENT:I = 0x8

.field public static final blacklist BROWSING_STATUS_EVENT:I = 0xf

.field public static final blacklist CALL_CONNECTED_EVENT:I = 0x1

.field public static final blacklist CALL_DISCONNECTED_EVENT:I = 0x2

.field public static final blacklist CARD_READER_STATUS_EVENT:I = 0x6

.field public static final blacklist CHANNEL_STATUS_EVENT:I = 0xa

.field public static final blacklist DATA_AVAILABLE_EVENT:I = 0x9

.field public static final blacklist DISPLAY_PARAMETERS_CHANGE_EVENT:I = 0xc

.field public static final blacklist FRAMES_INFORMATION_CHANGE_EVENT:I = 0x10

.field public static final blacklist IDLE_SCREEN_AVAILABLE_EVENT:I = 0x5

.field public static final blacklist IMS_REGISTRATION_EVENT:I = 0x17

.field public static final blacklist LANGUAGE_SELECTION_EVENT:I = 0x7

.field public static final blacklist LOCAL_CONNECTION_EVENT:I = 0xd

.field public static final blacklist LOCATION_STATUS_EVENT:I = 0x3

.field public static final blacklist MT_CALL_EVENT:I = 0x0

.field public static final blacklist NETWORK_REJECTION_EVENT:I = 0x12

.field public static final blacklist NETWORK_SEARCH_MODE_CHANGE_EVENT:I = 0xe

.field public static final blacklist NOTHING_EVENT:I = 0xfe

.field public static final blacklist REMOVE_EVENT:I = 0xff

.field public static final blacklist USER_ACTIVITY_EVENT:I = 0x4


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListConstants;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
