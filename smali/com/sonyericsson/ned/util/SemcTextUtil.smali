.class public abstract Lcom/sonyericsson/ned/util/SemcTextUtil;
.super Ljava/lang/Object;
.source "SemcTextUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;
    }
.end annotation


# static fields
.field private static final ABBREVIATIONS:[Ljava/lang/String;

.field public static final ALL_PICTOGRAM_RANGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final AMPERSAND:C = '&'

.field public static final APOSTROPHE:C = '\''

.field public static final ARABIC_COMMA:C = '\u060c'

.field public static final ARABIC_QUESTION_MARK:C = '\u061f'

.field public static final ARABIC_SEMICOLON:C = '\u061b'

.field private static final ARMENIAN_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

.field public static final ASTERISK:C = '*'

.field public static final AT:C = '@'

.field private static final BLACKLISTED_NOUGAT_PICTOGRAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOY_CODE_POINT:I = 0x1f466

.field public static final CARRIAGE_RETURN:C = '\r'

.field private static final CHARSET_NAME_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final CHARSET_UTF8:Ljava/nio/charset/Charset;

.field public static final COLON:C = ':'

.field public static final COMMA:C = ','

.field public static final DEBUG_PICTOGRAM_FILTERS:Z = false

.field public static final DEVANAGARI_DANDA:C = '\u0964'

.field public static final DOT:C = '.'

.field private static final EMOJI_MODIFIER_FITZPATRICK_TYPE_1_2:Lcom/sonyericsson/ned/model/CodePointString;

.field private static final EMOJI_MODIFIER_FITZPATRICK_TYPE_3:Lcom/sonyericsson/ned/model/CodePointString;

.field private static final EMOJI_MODIFIER_FITZPATRICK_TYPE_4:Lcom/sonyericsson/ned/model/CodePointString;

.field private static final EMOJI_MODIFIER_FITZPATRICK_TYPE_5:Lcom/sonyericsson/ned/model/CodePointString;

.field private static final EMOJI_MODIFIER_FITZPATRICK_TYPE_6:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final EMOJI_SKIN_TONE_BASE_RANGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final EQUAL_SIGN:C = '='

.field public static final EXCLAMATION_MARK:C = '!'

.field private static final GIRL_CODE_POINT:I = 0x1f467

.field public static final GREATER_THAN_SIGN:C = '>'

.field public static final GREEK_QUESTION_MARK:C = '\u037e'

.field public static final GREEK_QUESTION_MARK_SAME_AS_SEMICOLON:C = ';'

.field private static final GREEK_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEART_CODE_POINT:I = 0x2764

.field public static final HORIZONTAL_ELIPSIS:C = '\u2026'

.field public static final HYPHEN_MINUS:C = '-'

.field public static final INV_EXCLAMATION_MARK:C = '\u00a1'

.field public static final INV_QUESTION_MARK:C = '\u00bf'

.field public static final LEFT_CURLY_BRACKET:C = '{'

.field public static final LEFT_DOUBLE_QUOTATION_MARK:C = '\u201c'

.field public static final LEFT_PARENTHESIS:C = '('

.field public static final LEFT_POINTING_DOUBLE_ANGLE_QUOTATION_MARK:C = '\u00ab'

.field public static final LEFT_SQUARE_BRACKET:C = '['

.field public static final LESS_THAN_SIGN:C = '<'

.field private static final MAN_CODE_POINT:I = 0x1f468

.field public static final MARSHMALLOW_EMOJI_FLAGS:[[I

.field public static final NEW_LINE:C = '\n'

.field public static final NOUGAT_PICTOGRAM_RANGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_MATCH_INDEX:I = -0x1

.field public static final NUMBER:C = '#'

.field public static final PERCENT:C = '%'

.field public static final PER_MILLE_SIGN:C = '\u2030'

.field public static final PLUS_SIGN:C = '+'

.field public static final QUESTION_MARK:C = '?'

.field public static final QUOTATION_MARK:C = '\"'

.field public static final REVERSE_SOLIDUS:C = '\\'

.field public static final RIGHT_CURLY_BRACKET:C = '}'

.field public static final RIGHT_DOUBLE_QUOTATION_MARK:C = '\u201d'

.field public static final RIGHT_PARENTHESIS:C = ')'

.field public static final RIGHT_POINTING_DOUBLE_ANGLE_QUOTATION_MARK:C = '\u00bb'

.field public static final RIGHT_SQUARE_BRACKET:C = ']'

.field public static final SECTION_SIGN:C = '\u00a7'

.field public static final SEMICOLON:C = ';'

.field private static final SKIN_TONE_SUFFIXES:[Lcom/sonyericsson/ned/model/CodePointString;

.field public static final SLASH:C = '/'

.field public static final SPACE:C = ' '

.field private static final STANDARD_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

.field public static final TAG:Ljava/lang/String;

.field public static final UNDERSCORE:C = '_'

.field private static final VARIANT_SELECTION_CODE_POINT:I = 0xfe0f

.field public static final VERTICAL_LINE:C = '|'

.field private static final WOMAN_CODE_POINT:I = 0x1f469

.field public static final WORD_DELIMITERS:[C

.field public static final ZERO_WIDTH_JOINER:C = '\u200d'


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/ned/util/SemcTextUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    .line 101
    const/16 v0, 0xe5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_43

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_44

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_45

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_47

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_49

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_4b

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_4d

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [I

    fill-array-data v2, :array_4f

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [I

    fill-array-data v2, :array_51

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [I

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [I

    fill-array-data v2, :array_53

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [I

    fill-array-data v2, :array_54

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [I

    fill-array-data v2, :array_55

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [I

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [I

    fill-array-data v2, :array_57

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [I

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [I

    fill-array-data v2, :array_59

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [I

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [I

    fill-array-data v2, :array_5b

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [I

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [I

    fill-array-data v2, :array_5d

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [I

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [I

    fill-array-data v2, :array_5f

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [I

    fill-array-data v2, :array_60

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [I

    fill-array-data v2, :array_61

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [I

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [I

    fill-array-data v2, :array_63

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [I

    fill-array-data v2, :array_64

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [I

    fill-array-data v2, :array_65

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [I

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [I

    fill-array-data v2, :array_67

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [I

    fill-array-data v2, :array_69

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v3, [I

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v3, [I

    fill-array-data v2, :array_6b

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v3, [I

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v3, [I

    fill-array-data v2, :array_6d

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v3, [I

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v3, [I

    fill-array-data v2, :array_6f

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v3, [I

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v3, [I

    fill-array-data v2, :array_71

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v3, [I

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v3, [I

    fill-array-data v2, :array_73

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v3, [I

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v3, [I

    fill-array-data v2, :array_75

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v3, [I

    fill-array-data v2, :array_76

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v3, [I

    fill-array-data v2, :array_77

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v3, [I

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v3, [I

    fill-array-data v2, :array_79

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v3, [I

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v3, [I

    fill-array-data v2, :array_7b

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v3, [I

    fill-array-data v2, :array_7c

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v3, [I

    fill-array-data v2, :array_7d

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v3, [I

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v3, [I

    fill-array-data v2, :array_7f

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v3, [I

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v3, [I

    fill-array-data v2, :array_81

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v3, [I

    fill-array-data v2, :array_82

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v3, [I

    fill-array-data v2, :array_83

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v3, [I

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v3, [I

    fill-array-data v2, :array_85

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v3, [I

    fill-array-data v2, :array_86

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v3, [I

    fill-array-data v2, :array_87

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v3, [I

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v3, [I

    fill-array-data v2, :array_89

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v3, [I

    fill-array-data v2, :array_8a

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v3, [I

    fill-array-data v2, :array_8b

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v3, [I

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v3, [I

    fill-array-data v2, :array_8d

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v3, [I

    fill-array-data v2, :array_8e

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v3, [I

    fill-array-data v2, :array_8f

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v3, [I

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v3, [I

    fill-array-data v2, :array_91

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v3, [I

    fill-array-data v2, :array_92

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v3, [I

    fill-array-data v2, :array_93

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v3, [I

    fill-array-data v2, :array_94

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v3, [I

    fill-array-data v2, :array_95

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v3, [I

    fill-array-data v2, :array_96

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v3, [I

    fill-array-data v2, :array_97

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v3, [I

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v3, [I

    fill-array-data v2, :array_99

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v3, [I

    fill-array-data v2, :array_9a

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v3, [I

    fill-array-data v2, :array_9b

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v3, [I

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v3, [I

    fill-array-data v2, :array_9d

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v3, [I

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v3, [I

    fill-array-data v2, :array_9f

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v3, [I

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v3, [I

    fill-array-data v2, :array_a1

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v3, [I

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v3, [I

    fill-array-data v2, :array_a3

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v3, [I

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v3, [I

    fill-array-data v2, :array_a5

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v3, [I

    fill-array-data v2, :array_a6

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v3, [I

    fill-array-data v2, :array_a7

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v3, [I

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v3, [I

    fill-array-data v2, :array_a9

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v3, [I

    fill-array-data v2, :array_aa

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v3, [I

    fill-array-data v2, :array_ab

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v3, [I

    fill-array-data v2, :array_ac

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v3, [I

    fill-array-data v2, :array_ad

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v3, [I

    fill-array-data v2, :array_ae

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v3, [I

    fill-array-data v2, :array_af

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v3, [I

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v3, [I

    fill-array-data v2, :array_b1

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v3, [I

    fill-array-data v2, :array_b2

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v3, [I

    fill-array-data v2, :array_b3

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v3, [I

    fill-array-data v2, :array_b4

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v3, [I

    fill-array-data v2, :array_b5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v3, [I

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v3, [I

    fill-array-data v2, :array_b7

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v3, [I

    fill-array-data v2, :array_b8

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v3, [I

    fill-array-data v2, :array_b9

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v3, [I

    fill-array-data v2, :array_ba

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v3, [I

    fill-array-data v2, :array_bb

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v3, [I

    fill-array-data v2, :array_bc

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v3, [I

    fill-array-data v2, :array_bd

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v3, [I

    fill-array-data v2, :array_be

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v3, [I

    fill-array-data v2, :array_bf

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v3, [I

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v3, [I

    fill-array-data v2, :array_c1

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v3, [I

    fill-array-data v2, :array_c2

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v3, [I

    fill-array-data v2, :array_c3

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v3, [I

    fill-array-data v2, :array_c4

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v3, [I

    fill-array-data v2, :array_c5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v3, [I

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v3, [I

    fill-array-data v2, :array_c7

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v3, [I

    fill-array-data v2, :array_c8

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v3, [I

    fill-array-data v2, :array_c9

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v3, [I

    fill-array-data v2, :array_ca

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v3, [I

    fill-array-data v2, :array_cb

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v3, [I

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v3, [I

    fill-array-data v2, :array_cd

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v3, [I

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v3, [I

    fill-array-data v2, :array_cf

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v3, [I

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v3, [I

    fill-array-data v2, :array_d1

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v3, [I

    fill-array-data v2, :array_d2

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v3, [I

    fill-array-data v2, :array_d3

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v3, [I

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v3, [I

    fill-array-data v2, :array_d5

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v3, [I

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v3, [I

    fill-array-data v2, :array_d7

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v3, [I

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v3, [I

    fill-array-data v2, :array_d9

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v3, [I

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v3, [I

    fill-array-data v2, :array_db

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v3, [I

    fill-array-data v2, :array_dc

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v3, [I

    fill-array-data v2, :array_dd

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v3, [I

    fill-array-data v2, :array_de

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v3, [I

    fill-array-data v2, :array_df

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v3, [I

    fill-array-data v2, :array_e0

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v3, [I

    fill-array-data v2, :array_e1

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v3, [I

    fill-array-data v2, :array_e2

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v3, [I

    fill-array-data v2, :array_e3

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v3, [I

    fill-array-data v2, :array_e4

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->MARSHMALLOW_EMOJI_FLAGS:[[I

    .line 333
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$1;

    invoke-direct {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_SKIN_TONE_BASE_RANGES:Ljava/util/Set;

    .line 375
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$2;

    invoke-direct {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$2;-><init>()V

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->ALL_PICTOGRAM_RANGES:Ljava/util/Set;

    .line 420
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$3;

    invoke-direct {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$3;-><init>()V

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->NOUGAT_PICTOGRAM_RANGES:Ljava/util/Set;

    .line 463
    const/16 v0, 0x2c

    new-array v0, v0, [C

    fill-array-data v0, :array_e5

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->WORD_DELIMITERS:[C

    .line 482
    new-instance v0, Ljava/lang/String;

    const v1, 0x1f3fb

    .line 483
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_1_2:Lcom/sonyericsson/ned/model/CodePointString;

    .line 484
    new-instance v0, Ljava/lang/String;

    const v1, 0x1f3fc

    .line 485
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_3:Lcom/sonyericsson/ned/model/CodePointString;

    .line 486
    new-instance v0, Ljava/lang/String;

    const v1, 0x1f3fd

    .line 487
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_4:Lcom/sonyericsson/ned/model/CodePointString;

    .line 488
    new-instance v0, Ljava/lang/String;

    const v1, 0x1f3fe

    .line 489
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_5:Lcom/sonyericsson/ned/model/CodePointString;

    .line 490
    new-instance v0, Ljava/lang/String;

    const v1, 0x1f3ff

    .line 491
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_6:Lcom/sonyericsson/ned/model/CodePointString;

    .line 492
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v1, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_1_2:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_3:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_4:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_5:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_MODIFIER_FITZPATRICK_TYPE_6:Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->SKIN_TONE_SUFFIXES:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 498
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    .line 499
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "e.g. "

    aput-object v1, v0, v4

    const-string v1, "vs. "

    aput-object v1, v0, v5

    const-string v1, "i.e. "

    aput-object v1, v0, v3

    const-string v1, "n.b. "

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->ABBREVIATIONS:[Ljava/lang/String;

    .line 502
    const-string v0, "([\\.!\\?\u0964\u00a7\u00b6\u2022] )|\n"

    .line 503
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->STANDARD_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

    .line 504
    const-string v0, "([\\.!;\u037e!\\?\u0964\u00a7\u00b6\u2022] )|\n"

    .line 505
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->GREEK_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

    .line 506
    const-string v0, "([:\\.!\\?\u0964\u00a7\u00b6\u2022] )|\n"

    .line 507
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->ARMENIAN_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

    .line 512
    new-instance v0, Lcom/sonyericsson/ned/util/SemcTextUtil$4;

    invoke-direct {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$4;-><init>()V

    sput-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->BLACKLISTED_NOUGAT_PICTOGRAMS:Ljava/util/Set;

    return-void

    .line 101
    nop

    :array_0
    .array-data 4
        0x1f1e6
        0x1f1e9
    .end array-data

    :array_1
    .array-data 4
        0x1f1e6
        0x1f1ea
    .end array-data

    :array_2
    .array-data 4
        0x1f1e6
        0x1f1eb
    .end array-data

    :array_3
    .array-data 4
        0x1f1e6
        0x1f1ec
    .end array-data

    :array_4
    .array-data 4
        0x1f1e6
        0x1f1ee
    .end array-data

    :array_5
    .array-data 4
        0x1f1e6
        0x1f1f1
    .end array-data

    :array_6
    .array-data 4
        0x1f1e6
        0x1f1f2
    .end array-data

    :array_7
    .array-data 4
        0x1f1e6
        0x1f1f4
    .end array-data

    :array_8
    .array-data 4
        0x1f1e6
        0x1f1f7
    .end array-data

    :array_9
    .array-data 4
        0x1f1e6
        0x1f1f8
    .end array-data

    :array_a
    .array-data 4
        0x1f1e6
        0x1f1f9
    .end array-data

    :array_b
    .array-data 4
        0x1f1e6
        0x1f1fa
    .end array-data

    :array_c
    .array-data 4
        0x1f1e6
        0x1f1fc
    .end array-data

    :array_d
    .array-data 4
        0x1f1e6
        0x1f1fd
    .end array-data

    :array_e
    .array-data 4
        0x1f1e6
        0x1f1ff
    .end array-data

    :array_f
    .array-data 4
        0x1f1e7
        0x1f1e6
    .end array-data

    :array_10
    .array-data 4
        0x1f1e7
        0x1f1e7
    .end array-data

    :array_11
    .array-data 4
        0x1f1e7
        0x1f1e9
    .end array-data

    :array_12
    .array-data 4
        0x1f1e7
        0x1f1ea
    .end array-data

    :array_13
    .array-data 4
        0x1f1e7
        0x1f1eb
    .end array-data

    :array_14
    .array-data 4
        0x1f1e7
        0x1f1ec
    .end array-data

    :array_15
    .array-data 4
        0x1f1e7
        0x1f1ed
    .end array-data

    :array_16
    .array-data 4
        0x1f1e7
        0x1f1ee
    .end array-data

    :array_17
    .array-data 4
        0x1f1e7
        0x1f1ef
    .end array-data

    :array_18
    .array-data 4
        0x1f1e7
        0x1f1f2
    .end array-data

    :array_19
    .array-data 4
        0x1f1e7
        0x1f1f3
    .end array-data

    :array_1a
    .array-data 4
        0x1f1e7
        0x1f1f4
    .end array-data

    :array_1b
    .array-data 4
        0x1f1e7
        0x1f1f7
    .end array-data

    :array_1c
    .array-data 4
        0x1f1e7
        0x1f1f8
    .end array-data

    :array_1d
    .array-data 4
        0x1f1e7
        0x1f1f9
    .end array-data

    :array_1e
    .array-data 4
        0x1f1e7
        0x1f1fc
    .end array-data

    :array_1f
    .array-data 4
        0x1f1e7
        0x1f1fe
    .end array-data

    :array_20
    .array-data 4
        0x1f1e7
        0x1f1ff
    .end array-data

    :array_21
    .array-data 4
        0x1f1e8
        0x1f1e6
    .end array-data

    :array_22
    .array-data 4
        0x1f1e8
        0x1f1e8
    .end array-data

    :array_23
    .array-data 4
        0x1f1e8
        0x1f1e9
    .end array-data

    :array_24
    .array-data 4
        0x1f1e8
        0x1f1eb
    .end array-data

    :array_25
    .array-data 4
        0x1f1e8
        0x1f1ec
    .end array-data

    :array_26
    .array-data 4
        0x1f1e8
        0x1f1ed
    .end array-data

    :array_27
    .array-data 4
        0x1f1e8
        0x1f1ee
    .end array-data

    :array_28
    .array-data 4
        0x1f1e8
        0x1f1f0
    .end array-data

    :array_29
    .array-data 4
        0x1f1e8
        0x1f1f1
    .end array-data

    :array_2a
    .array-data 4
        0x1f1e8
        0x1f1f2
    .end array-data

    :array_2b
    .array-data 4
        0x1f1e8
        0x1f1f3
    .end array-data

    :array_2c
    .array-data 4
        0x1f1e8
        0x1f1f4
    .end array-data

    :array_2d
    .array-data 4
        0x1f1e8
        0x1f1f7
    .end array-data

    :array_2e
    .array-data 4
        0x1f1e8
        0x1f1fa
    .end array-data

    :array_2f
    .array-data 4
        0x1f1e8
        0x1f1fb
    .end array-data

    :array_30
    .array-data 4
        0x1f1e8
        0x1f1fc
    .end array-data

    :array_31
    .array-data 4
        0x1f1e8
        0x1f1fd
    .end array-data

    :array_32
    .array-data 4
        0x1f1e8
        0x1f1fe
    .end array-data

    :array_33
    .array-data 4
        0x1f1e8
        0x1f1ff
    .end array-data

    :array_34
    .array-data 4
        0x1f1e9
        0x1f1ea
    .end array-data

    :array_35
    .array-data 4
        0x1f1e9
        0x1f1ef
    .end array-data

    :array_36
    .array-data 4
        0x1f1e9
        0x1f1f0
    .end array-data

    :array_37
    .array-data 4
        0x1f1e9
        0x1f1f2
    .end array-data

    :array_38
    .array-data 4
        0x1f1e9
        0x1f1f4
    .end array-data

    :array_39
    .array-data 4
        0x1f1e9
        0x1f1ff
    .end array-data

    :array_3a
    .array-data 4
        0x1f1ea
        0x1f1e8
    .end array-data

    :array_3b
    .array-data 4
        0x1f1ea
        0x1f1ea
    .end array-data

    :array_3c
    .array-data 4
        0x1f1ea
        0x1f1ec
    .end array-data

    :array_3d
    .array-data 4
        0x1f1ea
        0x1f1f7
    .end array-data

    :array_3e
    .array-data 4
        0x1f1ea
        0x1f1f8
    .end array-data

    :array_3f
    .array-data 4
        0x1f1ea
        0x1f1f9
    .end array-data

    :array_40
    .array-data 4
        0x1f1ea
        0x1f1fa
    .end array-data

    :array_41
    .array-data 4
        0x1f1eb
        0x1f1ee
    .end array-data

    :array_42
    .array-data 4
        0x1f1eb
        0x1f1ef
    .end array-data

    :array_43
    .array-data 4
        0x1f1eb
        0x1f1f2
    .end array-data

    :array_44
    .array-data 4
        0x1f1eb
        0x1f1f4
    .end array-data

    :array_45
    .array-data 4
        0x1f1eb
        0x1f1f7
    .end array-data

    :array_46
    .array-data 4
        0x1f1ec
        0x1f1e6
    .end array-data

    :array_47
    .array-data 4
        0x1f1ec
        0x1f1e7
    .end array-data

    :array_48
    .array-data 4
        0x1f1ec
        0x1f1e9
    .end array-data

    :array_49
    .array-data 4
        0x1f1ec
        0x1f1ea
    .end array-data

    :array_4a
    .array-data 4
        0x1f1ec
        0x1f1ec
    .end array-data

    :array_4b
    .array-data 4
        0x1f1ec
        0x1f1ed
    .end array-data

    :array_4c
    .array-data 4
        0x1f1ec
        0x1f1ee
    .end array-data

    :array_4d
    .array-data 4
        0x1f1ec
        0x1f1f1
    .end array-data

    :array_4e
    .array-data 4
        0x1f1ec
        0x1f1f2
    .end array-data

    :array_4f
    .array-data 4
        0x1f1ec
        0x1f1f3
    .end array-data

    :array_50
    .array-data 4
        0x1f1ec
        0x1f1f6
    .end array-data

    :array_51
    .array-data 4
        0x1f1ec
        0x1f1f7
    .end array-data

    :array_52
    .array-data 4
        0x1f1ec
        0x1f1f9
    .end array-data

    :array_53
    .array-data 4
        0x1f1ec
        0x1f1fa
    .end array-data

    :array_54
    .array-data 4
        0x1f1ec
        0x1f1fc
    .end array-data

    :array_55
    .array-data 4
        0x1f1ec
        0x1f1fe
    .end array-data

    :array_56
    .array-data 4
        0x1f1ed
        0x1f1f0
    .end array-data

    :array_57
    .array-data 4
        0x1f1ed
        0x1f1f3
    .end array-data

    :array_58
    .array-data 4
        0x1f1ed
        0x1f1f7
    .end array-data

    :array_59
    .array-data 4
        0x1f1ed
        0x1f1f9
    .end array-data

    :array_5a
    .array-data 4
        0x1f1ed
        0x1f1fa
    .end array-data

    :array_5b
    .array-data 4
        0x1f1ee
        0x1f1e9
    .end array-data

    :array_5c
    .array-data 4
        0x1f1ee
        0x1f1ea
    .end array-data

    :array_5d
    .array-data 4
        0x1f1ee
        0x1f1f1
    .end array-data

    :array_5e
    .array-data 4
        0x1f1ee
        0x1f1f2
    .end array-data

    :array_5f
    .array-data 4
        0x1f1ee
        0x1f1f3
    .end array-data

    :array_60
    .array-data 4
        0x1f1ee
        0x1f1f4
    .end array-data

    :array_61
    .array-data 4
        0x1f1ee
        0x1f1f6
    .end array-data

    :array_62
    .array-data 4
        0x1f1ee
        0x1f1f7
    .end array-data

    :array_63
    .array-data 4
        0x1f1ee
        0x1f1f8
    .end array-data

    :array_64
    .array-data 4
        0x1f1ee
        0x1f1f9
    .end array-data

    :array_65
    .array-data 4
        0x1f1ef
        0x1f1ea
    .end array-data

    :array_66
    .array-data 4
        0x1f1ef
        0x1f1f2
    .end array-data

    :array_67
    .array-data 4
        0x1f1ef
        0x1f1f4
    .end array-data

    :array_68
    .array-data 4
        0x1f1ef
        0x1f1f5
    .end array-data

    :array_69
    .array-data 4
        0x1f1f0
        0x1f1ea
    .end array-data

    :array_6a
    .array-data 4
        0x1f1f0
        0x1f1ec
    .end array-data

    :array_6b
    .array-data 4
        0x1f1f0
        0x1f1ed
    .end array-data

    :array_6c
    .array-data 4
        0x1f1f0
        0x1f1ee
    .end array-data

    :array_6d
    .array-data 4
        0x1f1f0
        0x1f1f2
    .end array-data

    :array_6e
    .array-data 4
        0x1f1f0
        0x1f1f3
    .end array-data

    :array_6f
    .array-data 4
        0x1f1f0
        0x1f1f5
    .end array-data

    :array_70
    .array-data 4
        0x1f1f0
        0x1f1f7
    .end array-data

    :array_71
    .array-data 4
        0x1f1f0
        0x1f1fc
    .end array-data

    :array_72
    .array-data 4
        0x1f1f0
        0x1f1fe
    .end array-data

    :array_73
    .array-data 4
        0x1f1f0
        0x1f1ff
    .end array-data

    :array_74
    .array-data 4
        0x1f1f1
        0x1f1e6
    .end array-data

    :array_75
    .array-data 4
        0x1f1f1
        0x1f1e7
    .end array-data

    :array_76
    .array-data 4
        0x1f1f1
        0x1f1e8
    .end array-data

    :array_77
    .array-data 4
        0x1f1f1
        0x1f1ee
    .end array-data

    :array_78
    .array-data 4
        0x1f1f1
        0x1f1f0
    .end array-data

    :array_79
    .array-data 4
        0x1f1f1
        0x1f1f7
    .end array-data

    :array_7a
    .array-data 4
        0x1f1f1
        0x1f1f8
    .end array-data

    :array_7b
    .array-data 4
        0x1f1f1
        0x1f1f9
    .end array-data

    :array_7c
    .array-data 4
        0x1f1f1
        0x1f1fa
    .end array-data

    :array_7d
    .array-data 4
        0x1f1f1
        0x1f1fb
    .end array-data

    :array_7e
    .array-data 4
        0x1f1f1
        0x1f1fe
    .end array-data

    :array_7f
    .array-data 4
        0x1f1f2
        0x1f1e6
    .end array-data

    :array_80
    .array-data 4
        0x1f1f2
        0x1f1e8
    .end array-data

    :array_81
    .array-data 4
        0x1f1f2
        0x1f1e9
    .end array-data

    :array_82
    .array-data 4
        0x1f1f2
        0x1f1ea
    .end array-data

    :array_83
    .array-data 4
        0x1f1f2
        0x1f1ec
    .end array-data

    :array_84
    .array-data 4
        0x1f1f2
        0x1f1ed
    .end array-data

    :array_85
    .array-data 4
        0x1f1f2
        0x1f1f0
    .end array-data

    :array_86
    .array-data 4
        0x1f1f2
        0x1f1f1
    .end array-data

    :array_87
    .array-data 4
        0x1f1f2
        0x1f1f2
    .end array-data

    :array_88
    .array-data 4
        0x1f1f2
        0x1f1f3
    .end array-data

    :array_89
    .array-data 4
        0x1f1f2
        0x1f1f4
    .end array-data

    :array_8a
    .array-data 4
        0x1f1f2
        0x1f1f5
    .end array-data

    :array_8b
    .array-data 4
        0x1f1f2
        0x1f1f7
    .end array-data

    :array_8c
    .array-data 4
        0x1f1f2
        0x1f1f8
    .end array-data

    :array_8d
    .array-data 4
        0x1f1f2
        0x1f1f9
    .end array-data

    :array_8e
    .array-data 4
        0x1f1f2
        0x1f1fa
    .end array-data

    :array_8f
    .array-data 4
        0x1f1f2
        0x1f1fb
    .end array-data

    :array_90
    .array-data 4
        0x1f1f2
        0x1f1fc
    .end array-data

    :array_91
    .array-data 4
        0x1f1f2
        0x1f1fd
    .end array-data

    :array_92
    .array-data 4
        0x1f1f2
        0x1f1fe
    .end array-data

    :array_93
    .array-data 4
        0x1f1f2
        0x1f1ff
    .end array-data

    :array_94
    .array-data 4
        0x1f1f3
        0x1f1e6
    .end array-data

    :array_95
    .array-data 4
        0x1f1f3
        0x1f1ea
    .end array-data

    :array_96
    .array-data 4
        0x1f1f3
        0x1f1eb
    .end array-data

    :array_97
    .array-data 4
        0x1f1f3
        0x1f1ec
    .end array-data

    :array_98
    .array-data 4
        0x1f1f3
        0x1f1ee
    .end array-data

    :array_99
    .array-data 4
        0x1f1f3
        0x1f1f1
    .end array-data

    :array_9a
    .array-data 4
        0x1f1f3
        0x1f1f4
    .end array-data

    :array_9b
    .array-data 4
        0x1f1f3
        0x1f1f5
    .end array-data

    :array_9c
    .array-data 4
        0x1f1f3
        0x1f1f7
    .end array-data

    :array_9d
    .array-data 4
        0x1f1f3
        0x1f1fa
    .end array-data

    :array_9e
    .array-data 4
        0x1f1f3
        0x1f1ff
    .end array-data

    :array_9f
    .array-data 4
        0x1f1f4
        0x1f1f2
    .end array-data

    :array_a0
    .array-data 4
        0x1f1f5
        0x1f1e6
    .end array-data

    :array_a1
    .array-data 4
        0x1f1f5
        0x1f1ea
    .end array-data

    :array_a2
    .array-data 4
        0x1f1f5
        0x1f1eb
    .end array-data

    :array_a3
    .array-data 4
        0x1f1f5
        0x1f1ec
    .end array-data

    :array_a4
    .array-data 4
        0x1f1f5
        0x1f1ed
    .end array-data

    :array_a5
    .array-data 4
        0x1f1f5
        0x1f1f0
    .end array-data

    :array_a6
    .array-data 4
        0x1f1f5
        0x1f1f1
    .end array-data

    :array_a7
    .array-data 4
        0x1f1f5
        0x1f1f3
    .end array-data

    :array_a8
    .array-data 4
        0x1f1f5
        0x1f1f7
    .end array-data

    :array_a9
    .array-data 4
        0x1f1f5
        0x1f1f8
    .end array-data

    :array_aa
    .array-data 4
        0x1f1f5
        0x1f1f9
    .end array-data

    :array_ab
    .array-data 4
        0x1f1f5
        0x1f1fc
    .end array-data

    :array_ac
    .array-data 4
        0x1f1f5
        0x1f1fe
    .end array-data

    :array_ad
    .array-data 4
        0x1f1f6
        0x1f1e6
    .end array-data

    :array_ae
    .array-data 4
        0x1f1f7
        0x1f1f4
    .end array-data

    :array_af
    .array-data 4
        0x1f1f7
        0x1f1f8
    .end array-data

    :array_b0
    .array-data 4
        0x1f1f7
        0x1f1fa
    .end array-data

    :array_b1
    .array-data 4
        0x1f1f7
        0x1f1fc
    .end array-data

    :array_b2
    .array-data 4
        0x1f1f8
        0x1f1e6
    .end array-data

    :array_b3
    .array-data 4
        0x1f1f8
        0x1f1e7
    .end array-data

    :array_b4
    .array-data 4
        0x1f1f8
        0x1f1e8
    .end array-data

    :array_b5
    .array-data 4
        0x1f1f8
        0x1f1e9
    .end array-data

    :array_b6
    .array-data 4
        0x1f1f8
        0x1f1ea
    .end array-data

    :array_b7
    .array-data 4
        0x1f1f8
        0x1f1ec
    .end array-data

    :array_b8
    .array-data 4
        0x1f1f8
        0x1f1ee
    .end array-data

    :array_b9
    .array-data 4
        0x1f1f8
        0x1f1f0
    .end array-data

    :array_ba
    .array-data 4
        0x1f1f8
        0x1f1f1
    .end array-data

    :array_bb
    .array-data 4
        0x1f1f8
        0x1f1f2
    .end array-data

    :array_bc
    .array-data 4
        0x1f1f8
        0x1f1f3
    .end array-data

    :array_bd
    .array-data 4
        0x1f1f8
        0x1f1f4
    .end array-data

    :array_be
    .array-data 4
        0x1f1f8
        0x1f1f7
    .end array-data

    :array_bf
    .array-data 4
        0x1f1f8
        0x1f1f8
    .end array-data

    :array_c0
    .array-data 4
        0x1f1f8
        0x1f1f9
    .end array-data

    :array_c1
    .array-data 4
        0x1f1f8
        0x1f1fb
    .end array-data

    :array_c2
    .array-data 4
        0x1f1f8
        0x1f1fd
    .end array-data

    :array_c3
    .array-data 4
        0x1f1f8
        0x1f1fe
    .end array-data

    :array_c4
    .array-data 4
        0x1f1f8
        0x1f1ff
    .end array-data

    :array_c5
    .array-data 4
        0x1f1f9
        0x1f1e8
    .end array-data

    :array_c6
    .array-data 4
        0x1f1f9
        0x1f1e9
    .end array-data

    :array_c7
    .array-data 4
        0x1f1f9
        0x1f1ec
    .end array-data

    :array_c8
    .array-data 4
        0x1f1f9
        0x1f1ed
    .end array-data

    :array_c9
    .array-data 4
        0x1f1f9
        0x1f1ef
    .end array-data

    :array_ca
    .array-data 4
        0x1f1f9
        0x1f1f0
    .end array-data

    :array_cb
    .array-data 4
        0x1f1f9
        0x1f1f1
    .end array-data

    :array_cc
    .array-data 4
        0x1f1f9
        0x1f1f2
    .end array-data

    :array_cd
    .array-data 4
        0x1f1f9
        0x1f1f3
    .end array-data

    :array_ce
    .array-data 4
        0x1f1f9
        0x1f1f4
    .end array-data

    :array_cf
    .array-data 4
        0x1f1f9
        0x1f1f7
    .end array-data

    :array_d0
    .array-data 4
        0x1f1f9
        0x1f1f9
    .end array-data

    :array_d1
    .array-data 4
        0x1f1f9
        0x1f1fb
    .end array-data

    :array_d2
    .array-data 4
        0x1f1f9
        0x1f1fc
    .end array-data

    :array_d3
    .array-data 4
        0x1f1f9
        0x1f1ff
    .end array-data

    :array_d4
    .array-data 4
        0x1f1fa
        0x1f1e6
    .end array-data

    :array_d5
    .array-data 4
        0x1f1fa
        0x1f1ec
    .end array-data

    :array_d6
    .array-data 4
        0x1f1fa
        0x1f1f8
    .end array-data

    :array_d7
    .array-data 4
        0x1f1fa
        0x1f1fe
    .end array-data

    :array_d8
    .array-data 4
        0x1f1fa
        0x1f1ff
    .end array-data

    :array_d9
    .array-data 4
        0x1f1fb
        0x1f1e6
    .end array-data

    :array_da
    .array-data 4
        0x1f1fb
        0x1f1e8
    .end array-data

    :array_db
    .array-data 4
        0x1f1fb
        0x1f1ea
    .end array-data

    :array_dc
    .array-data 4
        0x1f1fb
        0x1f1ec
    .end array-data

    :array_dd
    .array-data 4
        0x1f1fb
        0x1f1ee
    .end array-data

    :array_de
    .array-data 4
        0x1f1fb
        0x1f1f3
    .end array-data

    :array_df
    .array-data 4
        0x1f1fb
        0x1f1fa
    .end array-data

    :array_e0
    .array-data 4
        0x1f1fc
        0x1f1f8
    .end array-data

    :array_e1
    .array-data 4
        0x1f1fe
        0x1f1ea
    .end array-data

    :array_e2
    .array-data 4
        0x1f1ff
        0x1f1e6
    .end array-data

    :array_e3
    .array-data 4
        0x1f1ff
        0x1f1f2
    .end array-data

    :array_e4
    .array-data 4
        0x1f1ff
        0x1f1fc
    .end array-data

    .line 463
    :array_e5
    .array-data 2
        0x20s
        0x2fs
        0xbfs
        0xa1s
        0x2es
        0x3fs
        0x21s
        0x40s
        0x28s
        0x29s
        0x2cs
        0x3as
        0x3bs
        0xas
        0xds
        0x5fs
        0x22s
        0x26s
        0x23s
        0x3ds
        0x2bs
        0x2as
        0x25s
        0x2030s
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x3cs
        0x3es
        0xa7s
        0x7cs
        0x2026s
        0x5cs
        0x37es
        0x3bs
        0x60cs
        0x61fs
        0x61bs
        0x964s
        0x201cs
        0x201ds
        0xbbs
        0xabs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 6
    .param p0, "indata"    # Ljava/lang/String;

    .prologue
    .line 1037
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1038
    :cond_0
    const/4 v4, 0x0

    .line 1054
    :goto_0
    return-object v4

    .line 1040
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1041
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1044
    .local v1, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    .end local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v2, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    sget-object v4, Lcom/sonyericsson/ned/util/SemcTextUtil;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1047
    if-eqz v2, :cond_2

    .line 1048
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    move-object v1, v2

    .line 1054
    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_3

    .line 1048
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    sget-object v4, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1051
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    .line 1047
    .end local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2
.end method

.method public static containsDigit(Ljava/lang/String;)Z
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 927
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v0, v3, v2

    .line 928
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 929
    const/4 v1, 0x1

    .line 932
    .end local v0    # "c":C
    :cond_0
    return v1

    .line 927
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 10
    .param p0, "indata"    # [B

    .prologue
    .line 1058
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 1059
    :cond_0
    const/4 v7, 0x0

    .line 1096
    :goto_0
    return-object v7

    .line 1061
    :cond_1
    const/4 v3, 0x0

    .line 1062
    .local v3, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    const/4 v0, 0x0

    .line 1068
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, p0

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1070
    .local v6, "outStr":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    .end local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v4, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Lcom/sonyericsson/ned/util/SemcTextUtil;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1074
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1075
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 1078
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 1079
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :goto_2
    :try_start_3
    sget-object v7, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1081
    if-eqz v3, :cond_2

    .line 1083
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1088
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 1090
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1096
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1081
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    .line 1083
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1088
    :cond_5
    :goto_5
    if-eqz v1, :cond_8

    .line 1090
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 1093
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_4

    .line 1084
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v2

    .line 1085
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1091
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1092
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 1093
    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_4

    .line 1084
    .end local v5    # "line":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 1085
    sget-object v7, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1091
    :catch_4
    move-exception v2

    .line 1092
    sget-object v7, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1081
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v3, :cond_6

    .line 1083
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1088
    :cond_6
    :goto_7
    if-eqz v0, :cond_7

    .line 1090
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1093
    :cond_7
    :goto_8
    throw v7

    .line 1084
    :catch_5
    move-exception v2

    .line 1085
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1091
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 1092
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/sonyericsson/ned/util/SemcTextUtil;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1081
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_6

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_6

    .line 1078
    :catch_7
    move-exception v2

    goto :goto_2

    .end local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_8
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    goto :goto_4
.end method

.method public static findDigitInArray([Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 4
    .param p0, "choices"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 936
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 937
    aget-object v2, p0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v1

    .line 938
    .local v1, "type":I
    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 942
    .end local v0    # "i":I
    .end local v1    # "type":I
    :goto_1
    return v0

    .line 936
    .restart local v0    # "i":I
    .restart local v1    # "type":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 942
    .end local v1    # "type":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static findWordInArray(Lcom/sonyericsson/ned/model/CodePointString;[Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 2
    .param p0, "word"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "array"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 947
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sonyericsson/ned/model/CodePointString;->equalsIgnoreCase(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 946
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;FF)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "maxWidth"    # I
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "minTextScaling"    # F
    .param p4, "originalTextSize"    # F

    .prologue
    .line 969
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 970
    const-string p0, ""

    .line 999
    .end local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 972
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 974
    invoke-static {p0, p2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    .line 975
    .local v2, "width":I
    if-le v2, p1, :cond_0

    .line 978
    if-lez v2, :cond_2

    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 979
    .local v1, "scale":F
    :goto_1
    cmpl-float v3, v1, p3

    if-ltz v3, :cond_3

    .line 980
    mul-float v3, p4, v1

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 978
    .end local v1    # "scale":F
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 984
    .restart local v1    # "scale":F
    :cond_3
    int-to-float v3, p1

    div-float/2addr v3, p3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 986
    .local v0, "ellipsized":Ljava/lang/CharSequence;
    mul-float v3, p4, p3

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 994
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 995
    mul-float v3, p4, v1

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    :cond_4
    move-object p0, v0

    .line 999
    goto :goto_0
.end method

.method public static getSentenceEndingPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "iso2Language"    # Ljava/lang/String;

    .prologue
    .line 795
    const-string v0, "el"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    sget-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->GREEK_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

    .line 801
    :goto_0
    return-object v0

    .line 798
    :cond_0
    const-string v0, "hy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    sget-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->ARMENIAN_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

    goto :goto_0

    .line 801
    :cond_1
    sget-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->STANDARD_SENTENCE_ENDING_PATTERN:Ljava/util/regex/Pattern;

    goto :goto_0
.end method

.method public static getSkinTones(Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 9
    .param p0, "skinToneBase"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 645
    sget-object v4, Lcom/sonyericsson/ned/util/SemcTextUtil;->SKIN_TONE_SUFFIXES:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 646
    .local v3, "skinTones":[Lcom/sonyericsson/ned/model/CodePointString;
    aput-object p0, v3, v6

    .line 649
    const-string v1, ""

    .line 650
    .local v1, "emojiBaseSuffix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    if-gt v4, v8, :cond_0

    .line 651
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->removeVariationSelection(Lcom/sonyericsson/ned/model/CodePointString;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "emojiBasePrefix":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v4, Lcom/sonyericsson/ned/util/SemcTextUtil;->SKIN_TONE_SUFFIXES:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 662
    add-int/lit8 v4, v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/ned/util/SemcTextUtil;->SKIN_TONE_SUFFIXES:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v6, v6, v2

    .line 663
    invoke-virtual {v6}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 662
    invoke-static {v5}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    aput-object v5, v3, v4

    .line 661
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 653
    .end local v0    # "emojiBasePrefix":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v4

    const v5, 0xfe0f

    if-ne v4, v5, :cond_1

    .line 654
    invoke-virtual {p0, v6, v8}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->removeVariationSelection(Lcom/sonyericsson/ned/model/CodePointString;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .restart local v0    # "emojiBasePrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    invoke-virtual {p0, v8, v4}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 657
    .end local v0    # "emojiBasePrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .restart local v0    # "emojiBasePrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    invoke-virtual {p0, v7, v4}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 666
    .restart local v2    # "i":I
    :cond_2
    return-object v3
.end method

.method private static getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1020
    instance-of v2, p0, Landroid/text/SpannableString;

    if-nez v2, :cond_0

    .line 1021
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1032
    :goto_0
    return-object v2

    :cond_0
    move-object v0, p0

    .line 1023
    check-cast v0, Landroid/text/SpannableString;

    .line 1024
    .local v0, "spannableString":Landroid/text/SpannableString;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/StyleSpan;

    .line 1025
    .local v1, "styles":[Landroid/text/style/StyleSpan;
    array-length v2, v1

    if-nez v2, :cond_1

    .line 1026
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1028
    :cond_1
    aget-object v2, v1, v4

    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1032
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1030
    :pswitch_0
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1028
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    const/4 v4, 0x0

    .line 1003
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1016
    :goto_0
    return v4

    .line 1006
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 1007
    .local v3, "savedTypeface":Landroid/graphics/Typeface;
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getTextTypeface(Ljava/lang/CharSequence;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1008
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1009
    .local v2, "len":I
    new-array v5, v2, [F

    .line 1010
    .local v5, "widths":[F
    invoke-virtual {p1, p0, v4, v2, v5}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    move-result v0

    .line 1011
    .local v0, "count":I
    const/4 v4, 0x0

    .line 1012
    .local v4, "width":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1013
    aget v6, v5, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v4, v6

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1015
    :cond_1
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getUnicodeRepresentation(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 684
    const-string v4, "UTF-8: ["

    .line 685
    .local v4, "unicodeRepresentation":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-char v1, v7, v5

    .line 686
    .local v1, "curr":C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " %x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 685
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 689
    .end local v1    # "curr":C
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] UTF-16: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 690
    const/4 v3, 0x0

    .local v3, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 691
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 692
    .local v0, "codePoint":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 693
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 694
    goto :goto_1

    .line 696
    .end local v0    # "codePoint":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static varargs getWordEnd(Lcom/sonyericsson/ned/model/CodePointString;II[C)I
    .locals 4
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "excludedDelimiterCharacters"    # [C

    .prologue
    const/4 v3, 0x0

    .line 841
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEmpty(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 842
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    if-ge v0, p2, :cond_2

    .line 845
    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v1

    new-array v2, v3, [C

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-le p2, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 846
    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v1

    new-array v2, v3, [C

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 849
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v1

    invoke-static {v1, p3}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    move v0, p2

    .line 854
    goto :goto_1
.end method

.method public static varargs getWordStart(Lcom/sonyericsson/ned/model/CodePointString;II[C)I
    .locals 6
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "excludedDelimiterCharacters"    # [C

    .prologue
    const/4 v5, 0x0

    .line 860
    move v2, p1

    .line 861
    .local v2, "start":I
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEmpty(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 862
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    if-ge v1, p2, :cond_0

    .line 863
    move v2, v1

    .line 864
    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v0

    .line 867
    .local v0, "codePoint":I
    new-array v3, v5, [C

    invoke-static {v0, v3}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v3

    new-array v4, v5, [C

    invoke-static {v3, v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    add-int/lit8 v2, v1, 0x1

    .line 879
    .end local v0    # "codePoint":I
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 873
    .restart local v0    # "codePoint":I
    .restart local v1    # "i":I
    :cond_1
    invoke-static {v0, p3}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 874
    add-int/lit8 v2, v1, 0x1

    .line 875
    goto :goto_1

    .line 862
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getWordStartAtSpaceDelimiter(Lcom/sonyericsson/ned/model/CodePointString;II)I
    .locals 3
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 893
    move v1, p1

    .line 894
    .local v1, "start":I
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEmpty(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 895
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    if-ge v0, p2, :cond_0

    .line 896
    move v1, v0

    .line 897
    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 898
    add-int/lit8 v1, v0, 0x1

    .line 903
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 895
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static isAtEdgeOfWord(I[C)Z
    .locals 1
    .param p0, "codePoint"    # I
    .param p1, "excludedDelimiters"    # [C

    .prologue
    .line 1145
    invoke-static {p0, p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v0

    return v0
.end method

.method private static isBlacklistedMarshmallowPictogram(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    .prologue
    const/16 v2, 0x261f

    const/16 v1, 0x261b

    .line 768
    const/16 v0, 0x2602

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2604

    if-le p0, v0, :cond_16

    :cond_0
    const/16 v0, 0x2607

    if-lt p0, v0, :cond_1

    const/16 v0, 0x260d

    if-le p0, v0, :cond_16

    :cond_1
    const/16 v0, 0x2610

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2612

    if-lt p0, v0, :cond_2

    const/16 v0, 0x2613

    if-le p0, v0, :cond_16

    :cond_2
    const/16 v0, 0x2616

    if-lt p0, v0, :cond_3

    if-le p0, v1, :cond_16

    :cond_3
    const/16 v0, 0x261d

    if-eq p0, v0, :cond_16

    if-lt p0, v2, :cond_4

    const/16 v0, 0x2639

    if-le p0, v0, :cond_16

    :cond_4
    const/16 v0, 0x263b

    if-lt p0, v0, :cond_5

    const/16 v0, 0x263f

    if-le p0, v0, :cond_16

    :cond_5
    const/16 v0, 0x2641

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2643

    if-lt p0, v0, :cond_6

    const/16 v0, 0x2647

    if-le p0, v0, :cond_16

    :cond_6
    const/16 v0, 0x266e

    if-eq p0, v0, :cond_16

    const/16 v0, 0x2670

    if-lt p0, v0, :cond_7

    const/16 v0, 0x267a

    if-le p0, v0, :cond_16

    :cond_7
    const/16 v0, 0x267c

    if-lt p0, v0, :cond_8

    const/16 v0, 0x267e

    if-le p0, v0, :cond_16

    :cond_8
    const/16 v0, 0x2686

    if-lt p0, v0, :cond_9

    const/16 v0, 0x2692

    if-le p0, v0, :cond_16

    :cond_9
    const/16 v0, 0x2694

    if-lt p0, v0, :cond_a

    const/16 v0, 0x269f

    if-le p0, v0, :cond_16

    :cond_a
    const/16 v0, 0x26a2

    if-lt p0, v0, :cond_b

    const/16 v0, 0x26a9

    if-le p0, v0, :cond_16

    :cond_b
    const/16 v0, 0x26ac

    if-lt p0, v0, :cond_c

    const/16 v0, 0x26bc

    if-le p0, v0, :cond_16

    :cond_c
    const/16 v0, 0x26bf

    if-lt p0, v0, :cond_d

    const/16 v0, 0x26c3

    if-le p0, v0, :cond_16

    :cond_d
    const/16 v0, 0x26c6

    if-lt p0, v0, :cond_e

    const/16 v0, 0x26cd

    if-le p0, v0, :cond_16

    :cond_e
    const/16 v0, 0x26cf

    if-lt p0, v0, :cond_f

    const/16 v0, 0x26d3

    if-le p0, v0, :cond_16

    :cond_f
    const/16 v0, 0x26d5

    if-lt p0, v0, :cond_10

    const/16 v0, 0x26e9

    if-le p0, v0, :cond_16

    :cond_10
    const/16 v0, 0x26eb

    if-lt p0, v0, :cond_11

    const/16 v0, 0x26f1

    if-le p0, v0, :cond_16

    :cond_11
    const/16 v0, 0x26f4

    if-eq p0, v0, :cond_16

    const/16 v0, 0x26f6

    if-lt p0, v0, :cond_12

    const/16 v0, 0x26f9

    if-le p0, v0, :cond_16

    :cond_12
    const/16 v0, 0x26fb

    if-lt p0, v0, :cond_13

    const/16 v0, 0x26fc

    if-le p0, v0, :cond_16

    :cond_13
    const/16 v0, 0x26fe

    if-lt p0, v0, :cond_14

    const/16 v0, 0x26ff

    if-le p0, v0, :cond_16

    :cond_14
    const v0, 0x1f540

    if-lt p0, v0, :cond_15

    const v0, 0x1f543

    if-le p0, v0, :cond_16

    :cond_15
    const/16 v0, 0x261a

    if-eq p0, v0, :cond_16

    if-eq p0, v1, :cond_16

    if-eq p0, v2, :cond_16

    const v0, 0x1f4f8

    if-ne p0, v0, :cond_17

    :cond_16
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlacklistedPictogram(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 759
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isOOrNewer()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->BLACKLISTED_NOUGAT_PICTOGRAMS:Ljava/util/Set;

    .line 760
    invoke-static {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isInRange(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isBlacklistedMarshmallowPictogram(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectingCharacter(I)Z
    .locals 1
    .param p0, "currChar"    # I

    .prologue
    .line 833
    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 907
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEndOfWord(Lcom/sonyericsson/ned/model/CodePointString;[C)Z
    .locals 1
    .param p0, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "excludedDelimiters"    # [C

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v0

    invoke-static {v0, p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isAtEdgeOfWord(I[C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFamilyOrKissingOrLoveEmoji(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p0, "codePointString"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x2

    .line 626
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v0

    .line 626
    invoke-static {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isHumanOrLoveEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isHumanOrLoveEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHumanOrLoveEmoji(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 631
    const v0, 0x1f468

    if-eq p0, v0, :cond_0

    const v0, 0x1f469

    if-eq p0, v0, :cond_0

    const v0, 0x1f466

    if-eq p0, v0, :cond_0

    const v0, 0x1f467

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2764

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInRange(ILjava/util/Set;)Z
    .locals 3
    .param p0, "codePoint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    .line 701
    .local v0, "range":Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;->getStartPosition()I

    move-result v2

    if-lt p0, v2, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;->getEndPosition()I

    move-result v2

    if-gt p0, v2, :cond_0

    .line 702
    const/4 v1, 0x1

    .line 705
    .end local v0    # "range":Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInTheMiddleOfAWord(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;[C)Z
    .locals 1
    .param p0, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "excludedDelimiters"    # [C

    .prologue
    .line 1112
    invoke-static {p0, p2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isStartOfWord(Lcom/sonyericsson/ned/model/CodePointString;[C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEndOfWord(Lcom/sonyericsson/ned/model/CodePointString;[C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMarshmallowSupportedFlag([I)Z
    .locals 5
    .param p0, "codePoints"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 743
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 744
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/sonyericsson/ned/util/SemcTextUtil;->MARSHMALLOW_EMOJI_FLAGS:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 745
    aget v3, p0, v2

    sget-object v4, Lcom/sonyericsson/ned/util/SemcTextUtil;->MARSHMALLOW_EMOJI_FLAGS:[[I

    aget-object v4, v4, v0

    aget v4, v4, v2

    if-ne v3, v4, :cond_0

    aget v3, p0, v1

    sget-object v4, Lcom/sonyericsson/ned/util/SemcTextUtil;->MARSHMALLOW_EMOJI_FLAGS:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-ne v3, v4, :cond_0

    .line 751
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 744
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    move v1, v2

    .line 751
    goto :goto_1
.end method

.method public static isNewLine(I)Z
    .locals 1
    .param p0, "currChar"    # I

    .prologue
    .line 959
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNougatSupportedPictogram(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p0, "codePointString"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 730
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v0

    sget-object v1, Lcom/sonyericsson/ned/util/SemcTextUtil;->NOUGAT_PICTOGRAM_RANGES:Ljava/util/Set;

    .line 730
    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isInRange(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPictogram(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 589
    sget-object v0, Lcom/sonyericsson/ned/util/SemcTextUtil;->ALL_PICTOGRAM_RANGES:Ljava/util/Set;

    invoke-static {p0, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isInRange(ILjava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static isSentenceEnding(Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/String;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 12
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "iso2Language"    # Ljava/lang/String;
    .param p2, "sentence"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v7, 0x0

    .line 814
    invoke-static {p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getSentenceEndingPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 815
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 816
    .local v3, "foundFirstMatch":Z
    if-eqz v3, :cond_2

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 817
    .local v2, "firstMatchStartIndex":I
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 818
    .local v1, "firstMatchEndIndex":I
    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    move v4, v6

    .line 819
    .local v4, "foundSecondMatch":Z
    :goto_1
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 820
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    if-nez v4, :cond_4

    .line 821
    .local v6, "wholeTextIsOneAndOnlyOneMatch":Z
    :goto_2
    if-eqz v6, :cond_1

    const-string v8, "en"

    .line 822
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 823
    sget-object v9, Lcom/sonyericsson/ned/util/SemcTextUtil;->ABBREVIATIONS:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_3
    if-ge v8, v10, :cond_1

    aget-object v0, v9, v8

    .line 824
    .local v0, "abbrevation":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v6, v7

    .line 829
    .end local v0    # "abbrevation":Ljava/lang/String;
    .end local v6    # "wholeTextIsOneAndOnlyOneMatch":Z
    :cond_1
    return v6

    .end local v1    # "firstMatchEndIndex":I
    .end local v2    # "firstMatchStartIndex":I
    .end local v4    # "foundSecondMatch":Z
    :cond_2
    move v2, v1

    .line 816
    goto :goto_0

    .restart local v1    # "firstMatchEndIndex":I
    .restart local v2    # "firstMatchStartIndex":I
    :cond_3
    move v4, v7

    .line 818
    goto :goto_1

    .restart local v4    # "foundSecondMatch":Z
    :cond_4
    move v6, v7

    .line 820
    goto :goto_2

    .line 823
    .restart local v0    # "abbrevation":Ljava/lang/String;
    .restart local v6    # "wholeTextIsOneAndOnlyOneMatch":Z
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public static isSkinTone(Ljava/lang/String;)Z
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 612
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 613
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 614
    .local v1, "high":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 615
    .local v2, "low":C
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 616
    .local v0, "codePoint":I
    sget-object v6, Lcom/sonyericsson/ned/util/SemcTextUtil;->SKIN_TONE_SUFFIXES:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v6, v5

    .line 617
    .local v3, "skinTone":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v8

    if-ne v8, v0, :cond_1

    .line 618
    const/4 v4, 0x1

    .line 622
    .end local v0    # "codePoint":I
    .end local v1    # "high":C
    .end local v2    # "low":C
    .end local v3    # "skinTone":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return v4

    .line 616
    .restart local v0    # "codePoint":I
    .restart local v1    # "high":C
    .restart local v2    # "low":C
    .restart local v3    # "skinTone":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static isSkinToneBase(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p0, "codePointString"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v0

    sget-object v1, Lcom/sonyericsson/ned/util/SemcTextUtil;->EMOJI_SKIN_TONE_BASE_RANGES:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isInRange(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isFamilyOrKissingOrLoveEmoji(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpace(I)Z
    .locals 1
    .param p0, "currChar"    # I

    .prologue
    .line 955
    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpaceOrNewLine(I)Z
    .locals 1
    .param p0, "currChar"    # I

    .prologue
    .line 963
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isNewLine(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStartOfWord(Lcom/sonyericsson/ned/model/CodePointString;[C)Z
    .locals 1
    .param p0, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "excludedDelimiters"    # [C

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v0

    invoke-static {v0, p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isAtEdgeOfWord(I[C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVariationSelection(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 670
    const v0, 0xfe0f

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWord(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 3
    .param p0, "string"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x0

    .line 922
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isEmpty(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->contains(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v1

    new-array v2, v0, [C

    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static varargs isWordDelimiter(I[C)Z
    .locals 4
    .param p0, "currChar"    # I
    .param p1, "excluded"    # [C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 566
    int-to-char v2, p0

    invoke-static {p1, v2}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([CC)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    sget-object v2, Lcom/sonyericsson/ned/util/SemcTextUtil;->WORD_DELIMITERS:[C

    int-to-char v3, p0

    invoke-static {v2, v3}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 573
    goto :goto_0

    .line 576
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_3

    .line 577
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isPictogram(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 578
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isVariationSelection(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 579
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    if-le v2, v1, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isWordIncludingExcludedWordDelimiters(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p0, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 755
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/model/CodePointString;->contains([C)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 2
        0x40s
        0x2es
    .end array-data
.end method

.method public static isZwjSequence(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p0, "codePointString"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x1

    .line 717
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    const-string v1, "\u200d"

    .line 718
    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeVariationSelection(Lcom/sonyericsson/ned/model/CodePointString;)Ljava/lang/String;
    .locals 3
    .param p0, "skinToneBase"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\ufe0f\ufe0f"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .param p0, "text"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 911
    if-eqz p0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    .line 913
    .local v1, "length":I
    const/4 v3, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 914
    .local v2, "s":I
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 915
    .local v0, "e":I
    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 918
    .end local v0    # "e":I
    .end local v1    # "length":I
    .end local v2    # "s":I
    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method
