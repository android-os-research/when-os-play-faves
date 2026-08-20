.class public Lcom/android/server/am/AppcoreLoggingTool$LazyHolder;
.super Ljava/lang/Object;
.source "AppcoreLoggingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppcoreLoggingTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/android/server/am/AppcoreLoggingTool;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 80
    new-instance v0, Lcom/android/server/am/AppcoreLoggingTool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/AppcoreLoggingTool;-><init>(Lcom/android/server/am/AppcoreLoggingTool-IA;)V

    sput-object v0, Lcom/android/server/am/AppcoreLoggingTool$LazyHolder;->sInstance:Lcom/android/server/am/AppcoreLoggingTool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
