.class Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelephonyDbLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;
    }
.end annotation


# instance fields
.field private blacklist mType:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;)V
    .registers 6

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 157
    iput-object p4, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;->mType:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 161
    sget-object v0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$2;->$SwitchMap$com$android$internal$telephony$SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType:[I

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader;->mType:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$TelephonyDbLoader$DbType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    goto :goto_13

    :cond_e
    const-string p0, "CREATE TABLE IF NOT EXISTS telephony_info (_id INTEGER PRIMARY KEY,date TEXT,key TEXT,value1 TEXT,value2 TEXT,value3 TEXT,value4 TEXT,value5 TEXT)"

    .line 163
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public whitelist onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
