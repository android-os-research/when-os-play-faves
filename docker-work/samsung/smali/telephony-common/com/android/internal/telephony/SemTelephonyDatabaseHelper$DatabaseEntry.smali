.class Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseEntry;
.super Ljava/lang/Object;
.source "SemTelephonyDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseEntry"
.end annotation


# static fields
.field public static final blacklist COLUMN_ID:I = 0x0

.field public static final blacklist COLUMN_MAX:I = 0x8

.field public static final blacklist COLUMN_NAME_DATE:Ljava/lang/String; = "date"

.field public static final blacklist COLUMN_NAME_KEY:Ljava/lang/String; = "key"

.field public static final blacklist COLUMN_NAME_VALUE_1:Ljava/lang/String; = "value1"

.field public static final blacklist COLUMN_NAME_VALUE_2:Ljava/lang/String; = "value2"

.field public static final blacklist COLUMN_NAME_VALUE_3:Ljava/lang/String; = "value3"

.field public static final blacklist COLUMN_NAME_VALUE_4:Ljava/lang/String; = "value4"

.field public static final blacklist COLUMN_NAME_VALUE_5:Ljava/lang/String; = "value5"

.field public static final blacklist COLUMN_VALUE_MAX:I = 0x5

.field public static final blacklist TABLE_NAME:Ljava/lang/String; = "telephony_info"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
