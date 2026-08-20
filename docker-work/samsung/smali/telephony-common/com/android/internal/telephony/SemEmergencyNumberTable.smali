.class public final Lcom/android/internal/telephony/SemEmergencyNumberTable;
.super Ljava/lang/Object;
.source "SemEmergencyNumberTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;
    }
.end annotation


# static fields
.field private static blacklist mEmergencyNumberTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    .line 109
    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, ""

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "206"

    const-string v6, "112,911,100"

    const-string v7, "112,911,999,000,08,110,118,119,100"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "234"

    const-string v8, "112,911,999,9999,1122,141999,141112"

    const-string v9, "112,911,999,000,08,110,118,119,9999,1122,141999,141112"

    invoke-direct {v1, v5, v8, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "235"

    invoke-direct {v1, v5, v8, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "242"

    const-string v8, "112,911,999,000,08,118,119,110"

    invoke-direct {v1, v5, v3, v8}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "272"

    const-string v8, "112,911,999"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "280"

    const-string v9, "112,911,199"

    const-string v10, "112,911,999,000,08,110,118,119,199"

    invoke-direct {v1, v5, v9, v10}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "286"

    const-string v9, "112,122,131,132,136,140,151,155,156,157,158,159,161,168,177,911,999,000,08,110,118,119"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310026"

    const-string v9, "112,911,999,000,110,118,119"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310160"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310200"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310210"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310220"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310230"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310240"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310250"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310260"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310270"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310290"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310310"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310330"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310490"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310660"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310800"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "313340"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "334050"

    const-string v9, "911"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "33450"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "33405"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "334090"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "33490"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "33409"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "36449"

    const-string v10, "112,911,919"

    const-string v11, "112,911,999,000,08,110,118,119,919"

    invoke-direct {v1, v5, v10, v11}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "370"

    invoke-direct {v1, v5, v9, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "422"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "424"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "42501"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "42502"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "42503"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "426"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "427"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "430"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "431"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "440"

    const-string v6, "112,911,110/1,118/8,119/6"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "441"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "450"

    const-string v6, "112/1,911/4,119/4,118/19,122/8,113/3,125/9,111/7,117/18"

    invoke-direct {v1, v5, v6, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "452"

    invoke-direct {v1, v5, v2, v2}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "454"

    invoke-direct {v1, v2, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "455"

    const-string v5, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "460"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "46011"

    const-string v6, "112,911/1,999/16,000,08,110/1,118,119/4,120/2,122/8"

    invoke-direct {v1, v2, v6, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "466"

    const-string v5, "112,911,110,119"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "46605"

    const-string v5, "112/4,911,110/1,119/2"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "502"

    invoke-direct {v1, v2, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "505"

    const-string v5, "112,911,000"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "515"

    invoke-direct {v1, v2, v9, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "530"

    const-string v5, "112,911,000,111"

    const-string v6, "112,911,999,000,08,110,118,119,111"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "52505"

    const-string v5, "112,911,999/1"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "520"

    const-string v5, "112"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "537"

    const-string v5, "110,111,112,911"

    const-string v6, "112,911,08,000,110,118,119,999,111"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "542"

    const-string v5, "112,911,917"

    const-string v6, "112,911,08,000,110,118,119,999,917"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "548"

    const-string v5, "112,911,08,000,110,118,119,999"

    invoke-direct {v1, v2, v8, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "606"

    const-string v5, "112,911,08"

    invoke-direct {v1, v2, v5, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "620"

    invoke-direct {v1, v2, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "634"

    invoke-direct {v1, v2, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "639"

    invoke-direct {v1, v2, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "659"

    invoke-direct {v1, v2, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "70403"

    const-string v5, "112,911,122"

    const-string v6, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "70604"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "71606"

    const-string v5, "112,911,105"

    const-string v6, "112,911,999,000,08,110,118,119,105"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "71610"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "71615"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "71617"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "724"

    const-string v5, "112,911,190"

    const-string v6, "112,911,999,000,08,110,118,119,190"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "730"

    const-string v5, "112,911,133"

    const-string v6, "112,911,999,000,08,110,118,119,133"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "732000"

    const-string v5, "112,123,911"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "732101"

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "732123"

    const-string v5, "112,123"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "73212"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "732103"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "732111"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "732130"

    invoke-direct {v1, v2, v5, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "732187"

    const-string v5, "123"

    const-string v6, "123"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "73401"

    const-string v5, "112,911,171"

    const-string v6, "112,911,999,000,08,110,118,119,171"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "73402"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "73403"

    invoke-direct {v1, v2, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "73404"

    const-string v5, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "73406"

    const-string v3, "112,911,*1,*171,171"

    const-string v5, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "736"

    const-string v3, "112,911,110"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "748"

    const-string v3, "112,911,109"

    const-string v4, "112,911,999,000,08,110,118,119,109"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist emergencyNumbersForPlmn(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 2

    .line 87
    invoke-static {p0}, Lcom/android/internal/telephony/SemEmergencyNumberTable;->entryForPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    if-eqz p1, :cond_e

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithSim:Ljava/lang/String;

    goto :goto_10

    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithoutSim:Ljava/lang/String;

    :goto_10
    return-object p0
.end method

.method private static blacklist entryForPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;
    .registers 6

    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 68
    new-instance v0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v3, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2e

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2b

    .line 73
    new-instance v0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2, v2}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object p0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    :cond_2b
    if-gez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v0

    .line 83
    :cond_2f
    :goto_2f
    sget-object p0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    return-object p0
.end method
