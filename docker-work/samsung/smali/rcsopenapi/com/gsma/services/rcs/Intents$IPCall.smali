.class public Lcom/gsma/services/rcs/Intents$IPCall;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPCall"
.end annotation


# static fields
.field public static final ACTION_INITIATE_IPCALL:Ljava/lang/String; = "com.gsma.services.rcs.action.INITIATE_IPCALL"

.field public static final ACTION_VIEW_IPCALL:Ljava/lang/String; = "com.gsma.services.rcs.action.VIEW_IPCALL"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method
