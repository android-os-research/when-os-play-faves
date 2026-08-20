.class public final Lcom/android/commands/am/InstrumentationData$ResultsBundleEntry;
.super Ljava/lang/Object;
.source "InstrumentationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/InstrumentationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResultsBundleEntry"
.end annotation


# static fields
.field public static final KEY:J = 0x10900000001L

.field public static final VALUE_BUNDLE:J = 0x10b00000007L

.field public static final VALUE_BYTES:J = 0x10c00000008L

.field public static final VALUE_DOUBLE:J = 0x10100000005L

.field public static final VALUE_FLOAT:J = 0x10200000004L

.field public static final VALUE_INT:J = 0x11100000003L

.field public static final VALUE_LONG:J = 0x11200000006L

.field public static final VALUE_STRING:J = 0x10900000002L


# instance fields
.field final synthetic this$0:Lcom/android/commands/am/InstrumentationData;


# direct methods
.method public constructor <init>(Lcom/android/commands/am/InstrumentationData;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/commands/am/InstrumentationData;

    .line 14
    iput-object p1, p0, Lcom/android/commands/am/InstrumentationData$ResultsBundleEntry;->this$0:Lcom/android/commands/am/InstrumentationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
