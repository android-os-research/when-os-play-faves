.class public final Lcom/android/commands/am/InstrumentationData$Session;
.super Ljava/lang/Object;
.source "InstrumentationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/InstrumentationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# static fields
.field public static final SESSION_STATUS:J = 0x10b00000002L

.field public static final TEST_STATUS:J = 0x20b00000001L


# instance fields
.field final synthetic this$0:Lcom/android/commands/am/InstrumentationData;


# direct methods
.method public constructor <init>(Lcom/android/commands/am/InstrumentationData;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/commands/am/InstrumentationData;

    .line 82
    iput-object p1, p0, Lcom/android/commands/am/InstrumentationData$Session;->this$0:Lcom/android/commands/am/InstrumentationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
