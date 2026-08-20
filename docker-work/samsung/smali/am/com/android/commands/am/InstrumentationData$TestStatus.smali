.class public final Lcom/android/commands/am/InstrumentationData$TestStatus;
.super Ljava/lang/Object;
.source "InstrumentationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/InstrumentationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TestStatus"
.end annotation


# static fields
.field public static final LOGCAT:J = 0x10900000005L

.field public static final RESULTS:J = 0x10b00000004L

.field public static final RESULT_CODE:J = 0x11100000003L


# instance fields
.field final synthetic this$0:Lcom/android/commands/am/InstrumentationData;


# direct methods
.method public constructor <init>(Lcom/android/commands/am/InstrumentationData;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/commands/am/InstrumentationData;

    .line 51
    iput-object p1, p0, Lcom/android/commands/am/InstrumentationData$TestStatus;->this$0:Lcom/android/commands/am/InstrumentationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
